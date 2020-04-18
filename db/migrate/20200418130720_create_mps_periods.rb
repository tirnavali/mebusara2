class CreateMpsPeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :mps_periods do |t|
    	t.belongs_to :mp
    	t.belongs_to :period
    end
  end
end
