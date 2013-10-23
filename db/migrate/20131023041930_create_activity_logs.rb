class CreateActivityLogs < ActiveRecord::Migration
  def change
    create_table :activity_logs do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :activity_logs, [:user_id, :created_at]
  end
end
