class CreateProposeables < ActiveRecord::Migration
  def change
    create_table :proposeables do |t|

      t.string  :title
      t.string  :content
      t.time    :resolve_time
      t.integer :index_number
      t.integer :version_number

      t.integer :ruleset_id
      t.integer :proposeable_type_id
      t.integer :predecessor_id
      t.integer :proposer_id
      t.integer :owner_id

      t.timestamps
    end

    add_index :proposeables, [:proposer_id, :owner_id]
    add_index :proposeables, [:ruleset_id, :proposeable_type_id]
  end
end
