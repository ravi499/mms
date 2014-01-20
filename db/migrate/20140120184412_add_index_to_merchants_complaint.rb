class AddIndexToMerchantsComplaint < ActiveRecord::Migration
  def change
  	add_index :merchants, :complaint
  end
end
