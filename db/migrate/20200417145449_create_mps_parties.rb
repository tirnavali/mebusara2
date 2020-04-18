class CreateMpsParties < ActiveRecord::Migration[6.0]
  def change
    create_table :mps_parties do |t|
    	t.belongs_to :mp
    	t.belongs_to :party
    end
  end
end
