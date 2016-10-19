class InvoicesController < ApplicationController
    before_action :getInvoice, only: [:show,:print]
    layout 'print', only: [:print]
    def index
      @invoices = Invoice.all
    end

    def new
      @invoice = Invoice.new
      @services = Service.pluck(:id,:gia_bh, :gia_dv)
      @invoice.invoice_details.build
    end

    def create
     @invoice = Invoice.new(invoice_params)
      if @invoice.save
        redirect_to invoices_path, notice: 'Tạo hoa don thành công'
      else
        flash.now[:alert] = 'Không thể lưu, kiểm tra lại thông tin'
        render action: :new
      end
    end

    def show
    end

    def print

    end

private
  def getInvoice
    @invoice =  Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:ten, :tuoi, :dia_chi, :gioi_tinh, :tong_tien, :tong_tien_chu, :thu_ngan,
                                  invoice_details_attributes: [:id, :service_id,
                                    :so_luong,:don_gia, :thanh_tien, :dv, :bh, :_destroy])
  end
end
