class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :tid
      t.string :mid

      t.timestamps
    end
  end
end
