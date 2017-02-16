class CreateCandidateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :candidate_details do |t|
      t.string :designation
      t.date :offer_date
      t.date :abandon_date
      t.integer :not_join_before
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
