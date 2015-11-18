class Team < ActiveRecord::Base
  MAX_MEMBER_COUNT = 6

  belongs_to :hot_issue
  has_many :team_memberships, dependent: :destroy
  has_many :activists, through: :team_memberships

  scope :needing_members, -> (hot_issue_id) {
    joins(:team_memberships).
      where("teams.hot_issue_id = ?", hot_issue_id).
      having("COUNT(team_memberships.id) < 6").
      group("teams.id")
  }

  def join(activist)
    team_to_add_new_member_to.
      team_memberships.create(activist: activist)
  end

  def full?
    MAX_MEMBER_COUNT <= team_memberships.count
  end

private

  def team_to_add_new_member_to
    full? ? next_team_to_add_to : self
  end

  def next_team_to_add_to
    t = Team.needing_members(hot_issue_id).first
    t.present? ? t : Team.create(hot_issue: hot_issue)
  end
end
