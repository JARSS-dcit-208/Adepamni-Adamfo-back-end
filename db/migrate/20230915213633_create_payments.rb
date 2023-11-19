class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.references :customer
      t.string :description
      
      t.timestamps
    end
  end
end
