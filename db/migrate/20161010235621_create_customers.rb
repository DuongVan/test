class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
     t.string :ten
     t.string :dia_chi
     t.string :tuoi
     t.string :nhom_mau
     t.string :gioi_tinh
     t.string :ghi_chu
     t.string :mota

      t.timestamps null: false
    end
  end
end
