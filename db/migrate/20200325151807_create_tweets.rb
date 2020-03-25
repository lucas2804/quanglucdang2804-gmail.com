class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :content
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
