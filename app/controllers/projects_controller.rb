class ProjectsController < ApplicationController
	before_action :set_project, only: [:edit, :update, :show, :destroy]

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:notice] = "Project created"
			redirect_to project_path(@project)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @project.update_attributes(project_params)
			flash[:success] = "Woo, your post was updated!"
			redirect_to project_path(@project)
		else
			flash[:success] = "Dang, your post was not updated"
			render :edit
		end
	end

	def index
		@projects = Project.all
	end

	def show
	end

	def destroy
		@project = current_user.projects.find(params[:id])
		@project.destroy
		flash[:notice] = "Deleted"
		redirect_to projects_path
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :thumbnail,  :user_id, images: [])
		end

		def set_project
			@project = Project.find(params[:id])
		end
end