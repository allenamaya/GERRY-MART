class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable

  include DeviseTokenAuth::Concerns::User

  # Auto-confirm user on creation (for development only)
  before_create :skip_confirmation!

  private

  def skip_confirmation!
    self.confirmed_at = Time.now
  end
end
