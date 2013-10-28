class CreateProposeables < ActiveRecord::Migration
  def change
    create_table :proposeables do |t|

      t.string  :title
      t.string  :content
      t.time    :resolve_time
      t.integer :version_number

      t.integer :ruleset_id
      t.integer :proposeable_type_id
      t.integer :successor_id
      t.integer :proposer_id
      t.integer :resolver_id

      t.timestamps
    end

    add_index :proposeables, [:proposer_id, :resolver_id]
    add_index :proposeables, [:ruleset_id, :proposeable_type_id]
  end
end
