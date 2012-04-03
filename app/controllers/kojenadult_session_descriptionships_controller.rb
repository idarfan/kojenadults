class KojenadultSessionDescriptionshipsController < ApplicationController
  # GET /kojenadult_session_descriptionships
  # GET /kojenadult_session_descriptionships.xml
  def index
    @kojenadult_session_descriptionships = KojenadultSessionDescriptionship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_session_descriptionships }
    end
  end

  # GET /kojenadult_session_descriptionships/1
  # GET /kojenadult_session_descriptionships/1.xml
  def show
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_session_descriptionship }
    end
  end

  # GET /kojenadult_session_descriptionships/new
  # GET /kojenadult_session_descriptionships/new.xml
  def new
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_session_descriptionship }
    end
  end

  # GET /kojenadult_session_descriptionships/1/edit
  def edit
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.find(params[:id])
  end

  # POST /kojenadult_session_descriptionships
  # POST /kojenadult_session_descriptionships.xml
  def create
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.new(params[:kojenadult_session_descriptionship])

    respond_to do |format|
      if @kojenadult_session_descriptionship.save
        format.html { redirect_to(@kojenadult_session_descriptionship, :notice => 'Kojenadult session descriptionship was successfully created.') }
        format.xml  { render :xml => @kojenadult_session_descriptionship, :status => :created, :location => @kojenadult_session_descriptionship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_session_descriptionship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_session_descriptionships/1
  # PUT /kojenadult_session_descriptionships/1.xml
  def update
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.find(params[:id])

    respond_to do |format|
      if @kojenadult_session_descriptionship.update_attributes(params[:kojenadult_session_descriptionship])
        format.html { redirect_to(@kojenadult_session_descriptionship, :notice => 'Kojenadult session descriptionship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_session_descriptionship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_session_descriptionships/1
  # DELETE /kojenadult_session_descriptionships/1.xml
  def destroy
    @kojenadult_session_descriptionship = KojenadultSessionDescriptionship.find(params[:id])
    @kojenadult_session_descriptionship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_session_descriptionships_url) }
      format.xml  { head :ok }
    end
  end
end
