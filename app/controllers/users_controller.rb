 # GET /users/new
  def new
    @user = User.new
    @user.addresses.build

    # デフォルトで2つの住所入力欄を作成したい場合は次のようにする
    # 2.times { @user.addresses.build }
  end

  
  private

    def user_params
      params.require(:user).permit(
        :name,
        :nickname,
        :gender,
        :birthday,
        addresses_attributes: [:id, :zipcode, :prefecture_name :city, :street, :building]
      )
    end