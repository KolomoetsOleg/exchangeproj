class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|      
      t.references :bank
      t.references :currency
      t.float :buy
      t.float :sell
      t.date :date
      #t.integer :version

      t.timestamps
    end
  end
end
