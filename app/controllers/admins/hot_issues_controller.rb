class Admins::HotIssuesController < Admins::ApplicationController

  def index
    @hot_issues = HotIssue.all
  end

  def edit
    hot_issue
  end

  def update
    if hot_issue.update_attributes(hot_issue_params)
      redirect_to admins_hot_issues_path
    else
      render 'edit'
    end
  end

private

  def hot_issue
    @hot_issue = HotIssue.find(params[:id])
  end

  def hot_issue_params
    params.require(:hot_issue).permit(:category, :title, :source_url)
  end
end
