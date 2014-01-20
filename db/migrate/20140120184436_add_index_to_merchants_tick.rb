class AddIndexToMerchantsTick < ActiveRecord::Migration
  def change
  	add_index :merchants, :tick
  end
end
