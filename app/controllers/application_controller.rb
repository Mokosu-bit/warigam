class ApplicationController < ActionController::Base
  before_action :ensure_domain
  FQDN = 'www.warigam.jp'

  # redirect correct server from herokuapp domain for SEO
  def ensure_domain
  return unless /\.herokuapp.com/ =~ request.host

  port = ":#{request.port}" unless [80, 443].include?(request.port)
  redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end
end
