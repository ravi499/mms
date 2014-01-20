class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :mid
      t.string :tid
      t.string :mobile
      t.string :email
      t.text   :complaint
      t.string :tick

      t.timestamps
    end
  end
end
