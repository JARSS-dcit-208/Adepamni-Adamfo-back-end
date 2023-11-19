class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.references :customer
      t.string :height
      t.string :weight
      t.string :bust
      t.string :waist
      t.string :hips
      t.string :back_waist_length
      t.string :front_waist_length
      t.string :shoulder_to_shoulder
      t.string :chest_depth
      t.string :armhole_depth
      t.string :inseam
      t.string :crotch_depth
      t.string :neck_circumference
      t.string :sleeve_length
      t.string :bicep_circumference
      t.string :forearm_circumference
      t.string :thigh_circumference
      t.string :knee_circumference
      t.string :calf_circumference
      t.string :ankle_circumference

      t.timestamps
    end
  end
end
