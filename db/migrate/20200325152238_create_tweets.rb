class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :content
      t.integer :user_id, index: true
      t.integer :status, index: true, limit: 3

      t.timestamps
    end
  end
end
