class User < ActiveRecord::Base
  validates :email, presence: true
  validates :provider, presence: true
  validates :uid, presence: true
  validates :username, presence: true

  has_many :questions
  has_many :answers

  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_by(provider: provider, uid: uid) || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create(
      provider: auth.provider,
      uid: auth.uid,
      email: auth.info.email,
      username: auth.info.nickname,
      avatar_url: auth.info.image
    )
  end

end
