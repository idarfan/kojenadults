class KojenadultAdultsWhatexamedshipsController < ApplicationController
  # GET /kojenadult_adults_whatexamedships
  # GET /kojenadult_adults_whatexamedships.xml
  def index
    @kojenadult_adults_whatexamedships = KojenadultAdultsWhatexamedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_whatexamedships }
    end
  end

  # GET /kojenadult_adults_whatexamedships/1
  # GET /kojenadult_adults_whatexamedships/1.xml
  def show
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_whatexamedship }
    end
  end

  # GET /kojenadult_adults_whatexamedships/new
  # GET /kojenadult_adults_whatexamedships/new.xml
  def new
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_whatexamedship }
    end
  end

  # GET /kojenadult_adults_whatexamedships/1/edit
  def edit
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.find(params[:id])
  end

  # POST /kojenadult_adults_whatexamedships
  # POST /kojenadult_adults_whatexamedships.xml
  def create
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.new(params[:kojenadult_adults_whatexamedship])

    respond_to do |format|
      if @kojenadult_adults_whatexamedship.save
        format.html { redirect_to(@kojenadult_adults_whatexamedship, :notice => 'Kojenadult adults whatexamedship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_whatexamedship, :status => :created, :location => @kojenadult_adults_whatexamedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_whatexamedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_whatexamedships/1
  # PUT /kojenadult_adults_whatexamedships/1.xml
  def update
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_whatexamedship.update_attributes(params[:kojenadult_adults_whatexamedship])
        format.html { redirect_to(@kojenadult_adults_whatexamedship, :notice => 'Kojenadult adults whatexamedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_whatexamedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_whatexamedships/1
  # DELETE /kojenadult_adults_whatexamedships/1.xml
  def destroy
    @kojenadult_adults_whatexamedship = KojenadultAdultsWhatexamedship.find(params[:id])
    @kojenadult_adults_whatexamedship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_whatexamedships_url) }
      format.xml  { head :ok }
    end
  end
end
