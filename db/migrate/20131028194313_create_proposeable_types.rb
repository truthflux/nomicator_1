class CreateProposeableTypes < ActiveRecord::Migration
  def change
    create_table :proposeable_types do |t|
      t.string :type_name
      t.integer :interval
      t.integer :weekday
      t.integer :voter_role_id
      t.boolean :instant_resolve,     :default => false
      t.decimal :majority,            :default => 0.5
      t.decimal :quorum,              :default => 0

      t.boolean :in_effect,           :default => false
      t.boolean :succeeded,           :default => false
      t.boolean :archived,            :default => false
      t.boolean :actionable,          :default => false

      t.integer :resolution_type_id

      t.timestamps
    end
  end
end
