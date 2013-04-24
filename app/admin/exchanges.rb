# encoding : utf-8

ActiveAdmin.register Exchange do
	menu :label => "Курсы валют"

  index do
 	  column "Банк", :sortable => :bank_id do |exchange|
      link_to exchange.bank.name, admin_exchange_path(exchange)
    end 
    column "Валюта", :sortable => :currency_id do |exchange|
      link_to exchange.currency.name, admin_exchange_path(exchange)
    end 
    column "Покупка", :buy
    column "Продажа", :sell
    column "Дата", :date

    #column :version
    default_actions
  end

  form do |f|
    f.inputs "Детали" do
      f.input :bank , :label => "Банк"
      f.input :currency, :label => "Валюта"
      f.input :buy, :label => "Покупка"
      f.input :sell, :label => "Продажа"
      f.input :date, :as => :datepicker, :label => "Дата"
    end
    f.buttons
  end
end