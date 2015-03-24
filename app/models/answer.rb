class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :name, presence: true
  validates :question, presence: true
  validates :user, presence: true
end
