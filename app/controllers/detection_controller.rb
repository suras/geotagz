class DetectionController < ApplicationController
  def index
  end

  def save_address
  	@info = Info.create(info_params)

  	render :text => @info.inspect
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @location = Info.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
    	params[:info][:ip_address] = request.remote_ip;
      params.require(:info).permit(:country, :latitude, :longitude, :city, :state, :street, :country, :browser, :os, :ip_address)
    end
end
