class KojenadultAdultsGraduatedshipsController < ApplicationController
  # GET /kojenadult_adults_graduatedships
  # GET /kojenadult_adults_graduatedships.xml
  def index
    @kojenadult_adults_graduatedships = KojenadultAdultsGraduatedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_graduatedships }
    end
  end

  # GET /kojenadult_adults_graduatedships/1
  # GET /kojenadult_adults_graduatedships/1.xml
  def show
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_graduatedship }
    end
  end

  # GET /kojenadult_adults_graduatedships/new
  # GET /kojenadult_adults_graduatedships/new.xml
  def new
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_graduatedship }
    end
  end

  # GET /kojenadult_adults_graduatedships/1/edit
  def edit
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.find(params[:id])
  end

  # POST /kojenadult_adults_graduatedships
  # POST /kojenadult_adults_graduatedships.xml
  def create
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.new(params[:kojenadult_adults_graduatedship])

    respond_to do |format|
      if @kojenadult_adults_graduatedship.save
        format.html { redirect_to(@kojenadult_adults_graduatedship, :notice => 'Kojenadult adults graduatedship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_graduatedship, :status => :created, :location => @kojenadult_adults_graduatedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_graduatedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_graduatedships/1
  # PUT /kojenadult_adults_graduatedships/1.xml
  def update
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_graduatedship.update_attributes(params[:kojenadult_adults_graduatedship])
        format.html { redirect_to(@kojenadult_adults_graduatedship, :notice => 'Kojenadult adults graduatedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_graduatedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_graduatedships/1
  # DELETE /kojenadult_adults_graduatedships/1.xml
  def destroy
    @kojenadult_adults_graduatedship = KojenadultAdultsGraduatedship.find(params[:id])
    @kojenadult_adults_graduatedship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_graduatedships_url) }
      format.xml  { head :ok }
    end
  end
end
