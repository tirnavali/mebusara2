class Addjobstomp < ActiveRecord::Migration[6.0]
  def change
    add_column :mps, :job_id, :int, before: :created_at
  end
end
