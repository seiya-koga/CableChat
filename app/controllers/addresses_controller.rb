# app/controllers/addresses_controller.rb

private
    def address_params
      params.require(:address).permit(:zipcode, :prefecture_name, :city, :street, :building)
    end