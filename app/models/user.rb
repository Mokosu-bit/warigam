class User < ApplicationRecord
  has_many :events
  has_many :rooms, dependent: :destroy
  has_many :joining_events, through: :rooms, source: :event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :timeoutable, :validatable,
         :omniauthable, omniauth_providers: %i[line]

  def social_profile(provider)
    social_profiles.select { |sp| sp.provider == provider.to_s }.first
  end

  def set_values(omniauth)
    return if provider.to_s != omniauth['provider'].to_s || uid != omniauth['uid']

    credentials = omniauth['credentials']
    info = omniauth['info']

    access_token = credentials['refresh_token']
    access_secret = credentials['secret']
    credentials = credentials.to_json
    name = info['name']
    picture_url = info['image']
  end

  def set_values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    save!
  end

  def remember_me
    true
  end

  # join event

  def join(event)
    joining_events << event
  end

  def cancel(event)
    joining_events.delete event
  end

  def join?(event)
    joining_events.include? event
  end
end
