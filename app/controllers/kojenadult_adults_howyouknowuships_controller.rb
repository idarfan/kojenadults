class KojenadultAdultsHowyouknowushipsController < ApplicationController
  # GET /kojenadult_adults_howyouknowuships
  # GET /kojenadult_adults_howyouknowuships.xml
  def index
    @kojenadult_adults_howyouknowuships = KojenadultAdultsHowyouknowuship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_howyouknowuships }
    end
  end

  # GET /kojenadult_adults_howyouknowuships/1
  # GET /kojenadult_adults_howyouknowuships/1.xml
  def show
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_howyouknowuship }
    end
  end

  # GET /kojenadult_adults_howyouknowuships/new
  # GET /kojenadult_adults_howyouknowuships/new.xml
  def new
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_howyouknowuship }
    end
  end

  # GET /kojenadult_adults_howyouknowuships/1/edit
  def edit
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.find(params[:id])
  end

  # POST /kojenadult_adults_howyouknowuships
  # POST /kojenadult_adults_howyouknowuships.xml
  def create
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.new(params[:kojenadult_adults_howyouknowuship])

    respond_to do |format|
      if @kojenadult_adults_howyouknowuship.save
        format.html { redirect_to(@kojenadult_adults_howyouknowuship, :notice => 'Kojenadult adults howyouknowuship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_howyouknowuship, :status => :created, :location => @kojenadult_adults_howyouknowuship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_howyouknowuship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_howyouknowuships/1
  # PUT /kojenadult_adults_howyouknowuships/1.xml
  def update
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_howyouknowuship.update_attributes(params[:kojenadult_adults_howyouknowuship])
        format.html { redirect_to(@kojenadult_adults_howyouknowuship, :notice => 'Kojenadult adults howyouknowuship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_howyouknowuship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_howyouknowuships/1
  # DELETE /kojenadult_adults_howyouknowuships/1.xml
  def destroy
    @kojenadult_adults_howyouknowuship = KojenadultAdultsHowyouknowuship.find(params[:id])
    @kojenadult_adults_howyouknowuship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_howyouknowuships_url) }
      format.xml  { head :ok }
    end
  end
end
