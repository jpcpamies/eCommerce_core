class CreateEmailsLists < ActiveRecord::Migration
  def change
    create_table :emails_lists do |t|
      t.string :email
      t.string :ip
      t.integer :state

      t.timestamps null: false
    end
  end
end
