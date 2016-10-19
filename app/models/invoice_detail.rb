class InvoiceDetail < ActiveRecord::Base
    belongs_to :invoice
    belongs_to :service
    validates_presence_of :service_id


    private
    def tinhTongTien
      service = Service.find(self.service_id)
      if service.present?
        gia = if self.bh
                service.gia_bh.to_d
              else
                service.gia_dv.to_d
              end
        self.thanh_tien = self.so_luong * gia
      end
    end
end
