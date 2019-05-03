class CreateReplyComments < ActiveRecord::Migration[5.2]
  def change
    create_table :reply_comments do |t|
      t.text :text
      t.integer :reply_id

      t.timestamps
    end
  end
end
