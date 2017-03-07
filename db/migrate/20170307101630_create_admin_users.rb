class CreateAdminUsers < ActiveRecord::Migration[5.0]

  def up
    create_table :admin_users do |t|
      t.string "username"
      t.string "email"
      t.string "password_digest"
      t.timestamps
    end
  end

  def down
   drop_table :admin_users;
  end


end
