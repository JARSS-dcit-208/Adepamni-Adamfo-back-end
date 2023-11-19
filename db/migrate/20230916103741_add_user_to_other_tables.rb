class AddUserToOtherTables < ActiveRecord::Migration[6.0]
  def change
    change_table :payments do |t|
      t.references :user
    end
    change_table :customers do |t|
      t.references :user
    end
    change_table :dresses do |t|
      t.references :user
    end
  end
end
