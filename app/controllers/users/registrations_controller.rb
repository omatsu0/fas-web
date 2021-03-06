# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :ensure_normal_user, only: %i[update destroy]

  def ensure_normal_user
    if resource.email == 'guest@test.com'
      redirect_to root_path, alert: 'ゲストユーザーの更新・削除はできません。'
    end
  end

  # # GET /resource/sign_up
  # def new
  #   @user = User.new
  #   @profile = @user.build_profile
  #   binding.pry
  # end

  #google認証時登録はパスワード入力なし
  # # POST /resource
  def create
    if params[:user][:password].nil?
      generated_password = Devise.friendly_token.first(8)
      uid=session["devise.user_attributes"]["uid"]
      provider=session["devise.user_attributes"]["provider"]
      user = User.new(email: params[:user][:email], password: generated_password, name: params[:user][:name],uid: uid, provider: provider)
      if user.save
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect user
      else
        super
      end
    else
      super
    end
  end

  # # GET /resource/edit
  # def edit
  #   super
  # end

  # # PUT /resource
  # def update
  #   super
  # end

  # # DELETE /resource
  # def destroy
  #   super
  # end

  # # GET /resource/cancel
  # # Forces the session data which is usually expired after sign
  # # in to be expired now. This is useful if the user wants to
  # # cancel oauth signing in/up in the middle of the process,
  # # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  
  # private

  # def user_params
  #   params.permit(:sign_up, keys: [:email,:encrypted_password,:name])
  # end

  # password = Devise.friendly_token.first(7)
  # if session[:provider].present? && session[:uid].present?
  #   @user = User.create(nickname:session[:nickname], email: session[:email], password: "password", password_confirmation: "password", f_name_kana: session[:f_name_kana],l_name_kana: session[:l_name_kana], f_name_kanji: session[:f_name_kanji], l_name_kanji: session[:l_name_kanji], birthday: session[:birthday], tel: params[:user][:tel])
  #   sns = SnsCredential.create(user_id: @user.id,uid: session[:uid], provider: session[:provider])
  # else
  #   @user = User.create(nickname:session[:nickname], email: session[:email], password: session[:password], password_confirmation: session[:password_confirmation], f_name_kana: session[:f_name_kana],l_name_kana: session[:l_name_kana], f_name_kanji: session[:f_name_kanji], l_name_kanji: session[:l_name_kanji], birthday: session[:birthday], tel: params[:user][:tel])
  # end

end