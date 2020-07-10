class AddIndexesToUserOmniauth < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :users, :provider, algorithm: :concurrently
    add_index :users, :uid, algorithm: :concurrently
  end
end
