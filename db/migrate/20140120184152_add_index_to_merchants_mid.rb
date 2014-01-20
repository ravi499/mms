class AddIndexToMerchantsMid < ActiveRecord::Migration
  def change
  	add_index :merchants, :mid
  end
end
