class KojenadultAdultsClasstypeshipsController < ApplicationController
  # GET /kojenadult_adults_classtypeships
  # GET /kojenadult_adults_classtypeships.xml
  def index
    @kojenadult_adults_classtypeships = KojenadultAdultsClasstypeship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_classtypeships }
    end
  end

  # GET /kojenadult_adults_classtypeships/1
  # GET /kojenadult_adults_classtypeships/1.xml
  def show
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_classtypeship }
    end
  end

  # GET /kojenadult_adults_classtypeships/new
  # GET /kojenadult_adults_classtypeships/new.xml
  def new
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_classtypeship }
    end
  end

  # GET /kojenadult_adults_classtypeships/1/edit
  def edit
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.find(params[:id])
  end

  # POST /kojenadult_adults_classtypeships
  # POST /kojenadult_adults_classtypeships.xml
  def create
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.new(params[:kojenadult_adults_classtypeship])

    respond_to do |format|
      if @kojenadult_adults_classtypeship.save
        format.html { redirect_to(@kojenadult_adults_classtypeship, :notice => 'Kojenadult adults classtypeship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_classtypeship, :status => :created, :location => @kojenadult_adults_classtypeship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_classtypeship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_classtypeships/1
  # PUT /kojenadult_adults_classtypeships/1.xml
  def update
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_classtypeship.update_attributes(params[:kojenadult_adults_classtypeship])
        format.html { redirect_to(@kojenadult_adults_classtypeship, :notice => 'Kojenadult adults classtypeship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_classtypeship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_classtypeships/1
  # DELETE /kojenadult_adults_classtypeships/1.xml
  def destroy
    @kojenadult_adults_classtypeship = KojenadultAdultsClasstypeship.find(params[:id])
    @kojenadult_adults_classtypeship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_classtypeships_url) }
      format.xml  { head :ok }
    end
  end
end
