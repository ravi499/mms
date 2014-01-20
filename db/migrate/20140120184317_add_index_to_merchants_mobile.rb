class AddIndexToMerchantsMobile < ActiveRecord::Migration
  def change
  	add_index :merchants, :mobile
  end
end
