class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string  :ten
      t.integer :tuoi
      t.string  :gioi_tinh
      t.string  :dia_chi
      t.decimal :tong_tien
      t.string  :tong_tien_chu
      t.string  :thu_ngan
      t.timestamps null: false
    end
  end
end
