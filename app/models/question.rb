class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user

  validates :title, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :user, presence: true
end
