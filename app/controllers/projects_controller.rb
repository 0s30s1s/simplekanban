class ProjectsController < ApplicationController
  # GET /projects/default
  def show
    redirect_to project_url('default') and return unless params[:id] == 'default'

    @project = "Default"

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end