class DeleteTableMpsParties < ActiveRecord::Migration[6.0]
  def change
    drop_table :mps_parties
    drop_table :mps_periods
  end
end
