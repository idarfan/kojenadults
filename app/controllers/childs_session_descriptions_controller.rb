class ChildsSessionDescriptionsController < ApplicationController
  # GET /childs_session_descriptions
  # GET /childs_session_descriptions.json
  def index
    @childs_session_descriptions = ChildsSessionDescription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @childs_session_descriptions }
    end
  end

  # GET /childs_session_descriptions/1
  # GET /childs_session_descriptions/1.json
  def show
    @childs_session_description = ChildsSessionDescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @childs_session_description }
    end
  end

  # GET /childs_session_descriptions/new
  # GET /childs_session_descriptions/new.json
  def new
    @childs_session_description = ChildsSessionDescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @childs_session_description }
    end
  end

  # GET /childs_session_descriptions/1/edit
  def edit
    @childs_session_description = ChildsSessionDescription.find(params[:id])
  end

  # POST /childs_session_descriptions
  # POST /childs_session_descriptions.json
  def create
    @childs_session_description = ChildsSessionDescription.new(params[:childs_session_description])

    respond_to do |format|
      if @childs_session_description.save
        format.html { redirect_to @childs_session_description, notice: 'Childs session description was successfully created.' }
        format.json { render json: @childs_session_description, status: :created, location: @childs_session_description }
      else
        format.html { render action: "new" }
        format.json { render json: @childs_session_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /childs_session_descriptions/1
  # PUT /childs_session_descriptions/1.json
  def update
    @childs_session_description = ChildsSessionDescription.find(params[:id])

    respond_to do |format|
      if @childs_session_description.update_attributes(params[:childs_session_description])
        format.html { redirect_to @childs_session_description, notice: 'Childs session description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @childs_session_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childs_session_descriptions/1
  # DELETE /childs_session_descriptions/1.json
  def destroy
    @childs_session_description = ChildsSessionDescription.find(params[:id])
    @childs_session_description.destroy

    respond_to do |format|
      format.html { redirect_to childs_session_descriptions_url }
      format.json { head :no_content }
    end
  end
end
