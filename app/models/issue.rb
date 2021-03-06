class Issue < ActiveRecord::Base
  belongs_to :repository

  has_many :issue_comments

  validates :issue_number, uniqueness: { scope: [:repository_id] }
end
