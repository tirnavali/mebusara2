class CreateElections < ActiveRecord::Migration[6.0]
  def change
    create_table :elections do |t|
      t.string :province
      t.string :other_province_name
      t.integer :mp_id
      t.integer :period_id
      t.timestamps
    end
  end
end
