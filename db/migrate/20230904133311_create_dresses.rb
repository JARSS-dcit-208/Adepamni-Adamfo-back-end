class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.references :customer 
      t.string :name
      
      t.timestamps
    end
  end
end
