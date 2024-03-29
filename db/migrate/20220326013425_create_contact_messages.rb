class CreateContactMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_messages do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.string :phone_number
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
