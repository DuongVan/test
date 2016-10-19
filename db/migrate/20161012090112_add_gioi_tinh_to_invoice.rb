class AddGioiTinhToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :gioi_tinh, :string
  end
end
