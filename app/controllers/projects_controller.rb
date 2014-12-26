class ProjectsController < ApplicationController
  before_action :load_project, except: [:index, :new, :create]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created'
    else
      render action: 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to @project, notice: 'Project was successfully updated'
    else
      render action: 'edit'
    end
  end

  private

    def project_params
      params.require(:project).permit()
    end
end

