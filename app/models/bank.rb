# encoding : utf-8

class Bank < ActiveRecord::Base

  before_save :ver_first_bank
	after_save :ver_bank
  after_destroy :d_ver_bank
  
  has_many :exchanges
  belongs_to :city

  attr_accessible :name, :short_name, :telephone, :email, :city_id, :fax, :web, :index, :address_in_city, :cash_dispenser, :subsidiary, :additional_office, :exchange_point, :date_of_entering_into_the_BSR, :address_from_statute, :actual_address, :corresponding_account, :bic, :tin, :rcco, :account_in_rubles, :account_in_dollar, :account_in_euro, :cash_transfers, :office_hours, :chairman_of_the_council, :statute, :chartered_capital, :members_of_council
  
  validates_presence_of :name, :short_name, :city_id, :web, :actual_address

  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  #validates_numericality_of :telephone, :fax, :greater_than => 0

  validates :telephone, :fax, :phone_number => {
    :ten_digits => true, :seven_digits => true, 
    :format => /^(?:\+?[0-9][-. ]?)?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{2})[-. ]?([0-9]{2})$/, :message => "Поле пустое или имеет неверный формат"}
  #validates_format_of :web, :with => /\Ahttps?:\/\//

  def ver_first_bank
    @v = Version.first
    if @v == nil 
      @version = Version.new
      @version.version = 0
      @version.save
    end
  end
 
  def ver_bank
    @ver = Version.first
    @ver.version+=1
    @ver.save

    #@b = Bank.last
    #@b.update_column :version, @ver.number
  end

  def d_ver_bank
    @ver = Version.first
    @ver.version+=1
    @ver.save
  end
end
