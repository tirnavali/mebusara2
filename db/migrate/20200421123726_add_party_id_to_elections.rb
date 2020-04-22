class AddPartyIdToElections < ActiveRecord::Migration[6.0]
  def change
    add_column :elections, :party_id, :int, before: :created_at
  end
end
