class HotIssue < ActiveRecord::Base

  has_many :teams
  has_many :team_memberships, through: :teams
  has_many :activists, through: :team_memberships

  validates :title, presence: true

  def join(activist)
    t = teams.any? ? teams.first : Team.create(hot_issue_id: id)
    t.join(activist)
  end
end
