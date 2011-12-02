class KojenadultAdultsLocalexamedshipsController < ApplicationController
  # GET /kojenadult_adults_localexamedships
  # GET /kojenadult_adults_localexamedships.xml
  def index
    @kojenadult_adults_localexamedships = KojenadultAdultsLocalexamedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_localexamedships }
    end
  end

  # GET /kojenadult_adults_localexamedships/1
  # GET /kojenadult_adults_localexamedships/1.xml
  def show
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_localexamedship }
    end
  end

  # GET /kojenadult_adults_localexamedships/new
  # GET /kojenadult_adults_localexamedships/new.xml
  def new
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_localexamedship }
    end
  end

  # GET /kojenadult_adults_localexamedships/1/edit
  def edit
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.find(params[:id])
  end

  # POST /kojenadult_adults_localexamedships
  # POST /kojenadult_adults_localexamedships.xml
  def create
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.new(params[:kojenadult_adults_localexamedship])

    respond_to do |format|
      if @kojenadult_adults_localexamedship.save
        format.html { redirect_to(@kojenadult_adults_localexamedship, :notice => 'Kojenadult adults localexamedship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_localexamedship, :status => :created, :location => @kojenadult_adults_localexamedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_localexamedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_localexamedships/1
  # PUT /kojenadult_adults_localexamedships/1.xml
  def update
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_localexamedship.update_attributes(params[:kojenadult_adults_localexamedship])
        format.html { redirect_to(@kojenadult_adults_localexamedship, :notice => 'Kojenadult adults localexamedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_localexamedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_localexamedships/1
  # DELETE /kojenadult_adults_localexamedships/1.xml
  def destroy
    @kojenadult_adults_localexamedship = KojenadultAdultsLocalexamedship.find(params[:id])
    @kojenadult_adults_localexamedship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_localexamedships_url) }
      format.xml  { head :ok }
    end
  end
end
