# encoding : utf-8
class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token#, :if => Proc.new { |c| c.request.format == 'application/json' }

require 'json'

  def android
    
    input_ver = params[:version].to_i
    v = Version.first
  
    banks = Bank.all 
    currency = Currency.all
    exchange = Exchange.all
    exch = Exchange.last

    # @date = Time.now.to_s :db
    # @date_now = @date[0..-10] 
    # @hour_now = Time.now.hour.to_i 

    # if @date_now == @exch.updated_at.strftime("%Y-%m-%d")
    #   if @hour_now < 15
    #     @ex = @exchange.map!{|one| one if one.updated_at.strftime("%Y-%m-%d") == @date_now.to_s}.compact
    #   else
    #     @ex = @exchange.map! {|one| one if one.updated_at.strftime("%Y-%m-%d") == @date_now.to_s && one.updated_at.strftime("%H").to_i >= 15}.compact
    #   end
    # els

    # if exch.updated_at.strftime("%H").to_i < 15
    #   ex = @exchange.map! {|one| one if one.updated_at.strftime("%Y-%m-%d") == @exch.updated_at.strftime("%Y-%m-%d")}.compact
    # else
    #   ex = @exchange.map! {|one| one if one.updated_at.strftime("%Y-%m-%d") == @exch.updated_at.strftime("%Y-%m-%d") && one.updated_at.strftime("%H").to_i >= 15}.compact
    # end
    ex = Array.new

    banks.each do |bank| 
      currency.each do |cur|
        ex.push bank.exchanges.where(:currency_id => cur.id).order('updated_at').last
      end
    end

    ex.compact
 
    # if @hour_now < 15
    #   @ex = @exchange.map!{|one| one if one.updated_at.strftime("%Y-%m-%d") == @date_now.to_s}.compact

    # else
    #   @ex = @exchange.map! {|one| one if one.updated_at.strftime("%Y-%m-%d") == @date_now.to_s && one.updated_at.strftime("%H").to_i >= 15}.compact
    # end

    # if(@input_ver < @v.number)
    #   @bank.map! {|one| one if one.version > @input_ver}.compact
    #   @currency.map! {|one| one if one.version > @input_ver}.compact
    #   @exchange.map! {|one| one if one.version > @input_ver}.compact
    # end

    result = {}

    if input_ver != v.version
      result.merge!({"banks" => banks.as_json(:only => [:id,:name,:short_name, :telephone, :email, :city_id , :actual_address, :fax, :web])})
      result.merge!({"currency" => currency.as_json(:only => [:id, :name, :short_name])})
      result.merge!({"last_exchange" => ex.as_json(:only => [:bank_id, :currency_id, :buy, :sell, :updated_at])})
      result.merge!({"cities" => City.all.as_json(:only => [:id,:name])})
    else
      result.merge!({"last_exchange" => ex.as_json(:only => [:bank_id, :currency_id, :buy, :sell, :updated_at])})
    end

    answer = v.as_json(:only => [:version])
    answer.update({"db" => result})
    #p @answer
    render :json => answer

    # respond_to do |format|
    #   @answer = @v.as_json(:only => [:number])
    #   @answer.update({"db" => @result})
    #   format.json { render :json => (@answer) }
    # end
     
  end

  def graphics_for_month_and_year
    input_bank_id = params[:bank_id]
    input_period = params[:period]
    input_month_number = params[:month_number]
    input_currency_id = params[:currency_id]
    input_prise_type = params[:prise_type]

    result = {}

    if input_bank_id == nil || input_period == nil || input_currency_id == nil || input_prise_type == nil
        result = {'errorMessage' => 'Wrong data'}
    else
      case input_period
      when "month"
        if input_month_number == nil 
          result = {'errorMessage' => 'Wrong data'}
        else  
          exchanges = Exchange.where(:bank_id => input_bank_id.to_i, :currency_id => input_currency_id.to_i)
          exchanges_this_month = exchanges.map!{|ex| ex if ex.updated_at.month == input_month_number.to_i }.compact
          
          case input_prise_type
          when "buy"
            result=({'errorMessage' => 'Ok', "month" => exchanges_this_month.as_json(:only => [:buy, :updated_at])})
          when "sell"
            result=({'errorMessage' => 'Ok', "month" => exchanges_this_month.as_json(:only => [:sell, :updated_at])})
          else
            result = {'errorMessage' => 'Wrong data'}
          end
        end

      when "year"
        now = Date.today
        before = Date.civil( now.year-1, now.month, now.day )
        exchanges = Exchange.where(:bank_id => input_bank_id.to_i, :currency_id => input_currency_id.to_i)
        exchanges_this_year = exchanges.map!{|ex| ex if ex.updated_at > before && ex.updated_at.day%9 == 0}.compact

        case input_prise_type
        when "buy"
          result=({'errorMessage' => 'Ok', "month" => exchanges_this_year.as_json(:only => [:buy, :updated_at])})
        when "sell"
          result=({'errorMessage' => 'Ok', "month" => exchanges_this_year.as_json(:only => [:sell, :updated_at])})
        else
          result = {'errorMessage' => 'Wrong data'}
        
        end
      else
        result = {'errorMessage' => 'Wrong data'}
      end
    end
   
  render :json => result.to_json
  end

  def graphics
    input_type = params[:type]
    if input_type != "history"
        result = {'errorMessage' => 'Wrong data'}
    else 
      exchanges_this_month = Exchange.where("exchanges.date > #{Date.today.months_since(-1).to_s}")
      exchanges_this_year = Exchange.where("exchanges.date > #{Date.today.prev_year.to_s}")
      exchanges_this_year_agr = exchanges_this_year.map!{|ex| ex if ex.date.day%9 == 0}.compact

      #PG
      # exchanges_this_month = Exchange.all.map!{|ex| ex if ex.date > Date.today.prev_month}.compact
      # exchanges_this_year_agr = Exchange.all.map!{|ex| ex if ex.date > Date.today.prev_year && ex.date.day%9 == 0}.compact

          
      result=({'errorMessage' => 'Ok', "month" => exchanges_this_month.as_json(:only => [:bank_id, :currency_id, :buy, :sell, :date]), "year" => exchanges_this_year_agr.as_json(:only => [:bank_id, :currency_id, :buy, :sell, :date])})
    end
    render :json => result.to_json
  end
end