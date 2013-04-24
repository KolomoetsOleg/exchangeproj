class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :short_name
      t.string :telephone
      t.string :fax
      t.string :web
      t.string :email
      t.string :index #индекс
      t.references :city 
      t.string :address_in_city
      t.integer :cash_dispenser #банкомат
      t.integer :subsidiary #филиал
      t.integer :additional_office #дополнительный офис
      t.integer :exchange_point #обменный пункт
      t.date :date_of_entering_into_the_BSR #дата внесения в кГР
      t.string :address_from_statute #адрес из устава
      t.string :actual_address #фактический адрес
      t.float :corresponding_account #корсчет
      t.string :bic #БИК
      t.string :tin #ИНН
      t.string :rcco #ОКПО
      t.text :account_in_rubles
      t.text :account_in_dollar
      t.text :account_in_euro
      t.string :cash_transfers #денежные переводы
      t.string :office_hours #часы работы
      t.string :chairman_of_the_council #председательсовета
      t.string :statute #устав
      t.string :chartered_capital #уставной капитал
      t.string :members_of_council #члены совета банка
      #t.integer :version

      t.timestamps
    end
  end
end
