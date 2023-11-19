class AddExtraCustomerFields < ActiveRecord::Migration[6.0]
  def change
    change_table :customers do |t|
      t.string :email
    end
  end
end
