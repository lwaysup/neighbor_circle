class CreatePosting < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.string :name
      t.integer :user_id
      t.boolean :open
      t.boolean :close
      t.boolean :responded_to
      t.timestamps
    end
  end
end
