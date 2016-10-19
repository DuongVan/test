class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.integer :invoice_id, null: false
      t.integer :service_id, null: false
      t.integer :so_luong
      t.decimal :don_gia
      t.decimal :thanh_tien
      t.boolean :bh, default: false
      t.boolean :dv, default: false
      t.string  :loai
    end
  end
end
