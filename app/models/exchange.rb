# encoding : utf-8

class Exchange < ActiveRecord::Base
  before_save :ver_first_ex
  after_save :ver_ex
  after_destroy :d_ver_ex

	belongs_to :bank
	belongs_to :currency
	
  attr_accessible  :bank_id, :currency_id, :buy, :sell, :date
  validates_presence_of :bank_id, :currency_id, :buy, :sell, :date
  
  def ver_first_ex
    @v = Version.first
    if @v == nil 
      @version = Version.new
      @version.version = 0
      @version.save
    end
  end

  def ver_ex
    @ver = Version.first
    @ver.version+=1
    @ver.save

    #@ex = Exchange.last
    #@ex.update_column :version, @ver.number
  end

  def d_ver_ex
    @ver = Version.first
    @ver.version+=1
    @ver.save
  end
end