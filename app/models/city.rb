# encoding : utf-8

class City < ActiveRecord::Base
	before_save :ver_first_city
	after_save :ver_city
  after_destroy :d_ver_city
	has_many :banks
	
  attr_accessible :name
  validates_presence_of :name

  def ver_first_city
    @v = Version.first
    if @v == nil 
      @version = Version.new
      @version.version = 0
      @version.save
    end
  end

  def ver_city
    @ver = Version.first
    @ver.version+=1
    @ver.save

    #@ex = Exchange.last
    #@ex.update_column :version, @ver.number
  end

  def d_ver_city
    @ver = Version.first
    @ver.version+=1
    @ver.save
  end
end
