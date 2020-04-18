class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      
      
      t.string :name
      t.string :shortname
      t.date :establishdate
      t.string :logo
      t.string :founders

      t.timestamps
    end
  end
end
