class AddIndexToPinEndorsements < ActiveRecord::Migration[5.0]
  def change
     add_index :pin_endorsements, [:user_id, :pin_id], :unique => true
  end
end
