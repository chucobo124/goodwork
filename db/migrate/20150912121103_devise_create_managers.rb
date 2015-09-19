class DeviseCreateManagers < ActiveRecord::Migration
  def change
    create_table(:managers) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip
      t.timestamps null: false
    end

    add_index :managers, :email,                unique: true
    # add_index :managers, :confirmation_token,   unique: true
    # add_index :managers, :unlock_token,         unique: true
  end
end
