class Activist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :team_memberships, dependent: :destroy
  has_many :teams, through: :team_memberships
  has_many :hot_issues, through: :teams
end
