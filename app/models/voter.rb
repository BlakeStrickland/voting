class Voter < ActiveRecord::Base
  has_one :vote

  before_validation :generate_access_token

  validates :name, presence: true
  validates :party, presence: true
  validates :token, presence: true
  validates :token, uniqueness: true

  private
  def generate_access_token
    self.token = SecureRandom.hex
  end
end
