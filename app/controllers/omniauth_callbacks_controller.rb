class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def line() = basic_action

  private

  def basic_action
    @omniauth = request.env['omniauth.auth']
    if @omniauth.present?
      @profile = User.find_or_initialize_by(provider: @omniauth['provider'], uid: @omniauth['uid'])
      if @profile.email.blank?
        email = @omniauth['info']['email'] || "#{@omniauth['uid']}-#{@omniauth['provider']}@example.com"
        @profile = current_user || User.create!(provider: @omniauth['provider'],
                                                uid: @omniauth['uid'], email: email, name: @omniauth['info']['name'], picture_url: @omniauth['info']['image'], password: Devise.friendly_token[0, 20])
      end
      @profile.set_values(@omniauth)
      sign_in(:user, @profile)
    end
    flash[:notice] = 'ログインしました'
    redirect_to events_path
  end

  def fake_email(_uid, _provider)
    "#{auth._uid}-#{auth._provider}@example.com"
  end
end
