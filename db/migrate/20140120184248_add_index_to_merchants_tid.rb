class AddIndexToMerchantsTid < ActiveRecord::Migration
  def change
  	add_index :merchants, :tid
  end
end
