class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :stt, null: false
      t.string  :ma_dkdv, null: false
      t.string  :ten, null: false
      t.decimal :gia_bh, null: false
      t.decimal :gia_dv, null: false
      t.boolean :active, default: true
      t.text    :ghi_chu
    end
  end
end
