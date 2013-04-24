class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :short_name
      #t.integer :version

      t.timestamps
    end
  end
end
