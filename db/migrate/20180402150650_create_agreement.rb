class CreateAgreement < ActiveRecord::Migration[5.1]
  def change
    create_table :agreements do |t|
      t.integer :posting_id
      t.integer :user_id
      t.boolean :service_rendered
      t.timestamps
    end
  end
end
