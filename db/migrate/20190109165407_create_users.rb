class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.belongs_to :photobooth_session, index: true

      t.timestamps
    end
  end
end
