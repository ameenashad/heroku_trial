class AppsController < ApplicationController
  def index
    @heroku ||= PlatformAPI.connect_oauth('b144c19d-7dff-4202-8936-c90f5a3e3ee8')
    @apps ||= @heroku.app.list
    @user_info ||= @heroku.account.info
  end
end
