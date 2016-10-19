class ServicesController < ApplicationController
    before_action :getService, only: [:show, :edit, :update]
    def index
      @services = Service.all
    end

    def new
      @service = Service.new
    end

    def show
    end

    def edit
    end

    def create
      @service = Service.new(service_params)
      if @service.save
        redirect_to services_path, notice: 'Tạo dịch vụ thành công'
      else
        flash.now[:alert] = 'Không thể lưu, kiểm tra lại thông tin'
        render action: :new
      end
    end

    def update
      if @service.update_attributes(service_params)
        redirect_to service_path(@service), notice: 'Cập nhật thành công'
      else
        flash.now[:alert] = 'Không thể lưu , kiểm tra lại thông tin'
        render action: :edit
      end
    end

private

    def getService
      @service = Service.find(params[:id])
    end

    def service_params
    params.require(:service).permit(:stt, :ma_dkdv, :ten, :gia_dv, :gia_bh)
    end
end
