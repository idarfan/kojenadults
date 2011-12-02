class KojenadultAdultsWhylearnshipsController < ApplicationController
  # GET /kojenadult_adults_whylearnships
  # GET /kojenadult_adults_whylearnships.xml
  def index
    @kojenadult_adults_whylearnships = KojenadultAdultsWhylearnship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_whylearnships }
    end
  end

  # GET /kojenadult_adults_whylearnships/1
  # GET /kojenadult_adults_whylearnships/1.xml
  def show
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_whylearnship }
    end
  end

  # GET /kojenadult_adults_whylearnships/new
  # GET /kojenadult_adults_whylearnships/new.xml
  def new
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_whylearnship }
    end
  end

  # GET /kojenadult_adults_whylearnships/1/edit
  def edit
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.find(params[:id])
  end

  # POST /kojenadult_adults_whylearnships
  # POST /kojenadult_adults_whylearnships.xml
  def create
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.new(params[:kojenadult_adults_whylearnship])

    respond_to do |format|
      if @kojenadult_adults_whylearnship.save
        format.html { redirect_to(@kojenadult_adults_whylearnship, :notice => 'Kojenadult adults whylearnship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_whylearnship, :status => :created, :location => @kojenadult_adults_whylearnship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_whylearnship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_whylearnships/1
  # PUT /kojenadult_adults_whylearnships/1.xml
  def update
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_whylearnship.update_attributes(params[:kojenadult_adults_whylearnship])
        format.html { redirect_to(@kojenadult_adults_whylearnship, :notice => 'Kojenadult adults whylearnship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_whylearnship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_whylearnships/1
  # DELETE /kojenadult_adults_whylearnships/1.xml
  def destroy
    @kojenadult_adults_whylearnship = KojenadultAdultsWhylearnship.find(params[:id])
    @kojenadult_adults_whylearnship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_whylearnships_url) }
      format.xml  { head :ok }
    end
  end
end
