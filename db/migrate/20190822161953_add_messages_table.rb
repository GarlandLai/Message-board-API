class AddMessagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.column :name, :string
      t.column :content, :string
      t.column :group_id, :integer
      t.timestamps
    end
  end
end
