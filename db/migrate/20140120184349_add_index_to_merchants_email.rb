class AddIndexToMerchantsEmail < ActiveRecord::Migration
  def change
  	add_index :merchants, :email
  end
end
