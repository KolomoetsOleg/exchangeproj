# encoding : utf-8

class Currency < ActiveRecord::Base
  before_save :ver_first_cur
  after_save :ver_cur
  after_destroy :d_ver_cur

  has_many :exchanges

  attr_accessible :name, :short_name
  
  validates_presence_of :name, :short_name
 
  def ver_first_cur
    @v = Version.first
    if @v == nil 
      @version = Version.new
      @version.version = 0
      @version.save
    end
  end

  def ver_cur
    @ver = Version.first
    @ver.version+=1
    @ver.save

    #@cur = Currency.last
    #@cur.update_column :version, @ver.number
  end

  def d_ver_cur
    @ver = Version.first
    @ver.version+=1
    @ver.save
  end
end