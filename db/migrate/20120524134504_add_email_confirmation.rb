class AddEmailConfirmation < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      # Lockable
      t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      # Token authenticatable
      t.string :authentication_token
    end

    add_index :users, :confirmation_token,   :unique => true
    add_index :users, :unlock_token,         :unique => true
    add_index :users, :authentication_token, :unique => true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
