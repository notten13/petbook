class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :email_confirmed, default: false
      t.string :email_confirm_token
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.boolean :avatar, default: false

      t.timestamps
    end
  end
end
