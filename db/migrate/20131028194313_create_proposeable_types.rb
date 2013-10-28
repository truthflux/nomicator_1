class CreateProposeableTypes < ActiveRecord::Migration
  def change
    create_table :proposeable_types do |t|
      t.string :type_name
      t.integer :interval
      t.integer :weekday
      t.integer :voter_role_id
      t.boolean :instant_resolve
      t.decimal :majority
      t.decimal :quorum

      t.boolean :in_effect
      t.boolean :succeeded
      t.boolean :archived
      t.boolean :actionable

      t.integer :resolution_type_id

      t.timestamps
    end
  end
end
