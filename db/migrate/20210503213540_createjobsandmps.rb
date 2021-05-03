class Createjobsandmps < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs_mps, id: false do |t|
      t.belongs_to :mp
      t.belongs_to :job
    end
  end
end
