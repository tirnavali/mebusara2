class CreateMps < ActiveRecord::Migration[6.0]
  def change
    create_table :mps do |t|
      
      t.string :name
      t.string :name2
      t.string :surname
      t.string :gender
      t.date :birthdate
      t.date :deaddate
      t.text :detail

      t.timestamps
    end
  end
end
