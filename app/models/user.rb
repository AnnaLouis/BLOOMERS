class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :linkedin]

  after_create :send_welcome_email

  has_many :startups
  has_many :bloomers
  has_many :incubations, through: :startups
  has_many :candidatures, through: :startups
  has_many :candidatures, through: :bloomers
  has_many :programs, through: :bloomers
  has_many :batches, through: :programs
  has_many :favorites, dependent: :destroy

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image.split("=")[0] << "=large"
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def self.find_for_linkedin_oauth(auth)
    #TODO Add
    user_params = auth.to_h.slice(:uid, :provider)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:linkedin_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    # user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
     user.update(user_params)
    else
     user = User.new(user_params)
     user.password = Devise.friendly_token[0,20]  # Fake password for validation
     user.save
    end
    return user
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
