class WebProjectsController < ApplicationController
  # GET /web_projects
  # GET /web_projects.json
  def index
    @web_projects = WebProject.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @web_projects }
    end
  end

  # GET /web_projects/1
  # GET /web_projects/1.json
  def show
    @web_project = WebProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @web_project }
    end
  end

  # GET /web_projects/new
  # GET /web_projects/new.json
  def new
    @web_project = WebProject.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @web_project }
    end
  end

  # GET /web_projects/1/edit
  def edit
    @web_project = WebProject.find(params[:id])
  end

  # POST /web_projects
  # POST /web_projects.json
  def create
    @web_project = WebProject.new(params[:web_project])

    respond_to do |format|
      if @web_project.save
        format.html { redirect_to @web_project, notice: 'Web project was successfully created.' }
        format.json { render json: @web_project, status: :created, location: @web_project }
      else
        format.html { render action: "new" }
        format.json { render json: @web_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /web_projects/1
  # PUT /web_projects/1.json
  def update
    @web_project = WebProject.find(params[:id])

    respond_to do |format|
      if @web_project.update_attributes(params[:web_project])
        format.html { redirect_to @web_project, notice: 'Web project was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @web_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_projects/1
  # DELETE /web_projects/1.json
  def destroy
    @web_project = WebProject.find(params[:id])
    @web_project.destroy

    respond_to do |format|
      format.html { redirect_to web_projects_url }
      format.json { head :ok }
    end
  end
end
