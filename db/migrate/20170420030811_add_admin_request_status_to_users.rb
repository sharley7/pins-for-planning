class AddAdminRequestStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin_request, :string, default: 'nil'
  end
end
