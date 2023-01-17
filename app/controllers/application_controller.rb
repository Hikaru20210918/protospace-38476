class ApplicationController < ActionController::Base
  before_action :authenticate_user! 
   #before_action→全てのコントローラーの実行前にアクションさせる
   #:authenticate_user!→deviseを使用した際に記載する ログインユーザーのみ処理が実行可能となる

  before_action :configure_permitted_parameters, if: :devise_controller?
  #if: :devise_controller?→deviseにまつわる画面に入った？Trueなら、configure_permitted_parametersメソッドを実行する

 private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile,:position,:occupation])
  end
end