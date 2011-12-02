class KojenadultClassesController < ApplicationController
  # GET /kojenadult_classes
  # GET /kojenadult_classes.xml
  def index
    @kojenadult_classes = KojenadultClasse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_classes }
    end
  end

  # GET /kojenadult_classes/1
  # GET /kojenadult_classes/1.xml
  def show
    @kojenadult_class = KojenadultClasse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_class }
    end
  end

  # GET /kojenadult_classes/new
  # GET /kojenadult_classes/new.xml
  def new
    @kojenadult_class = KojenadultClasse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_class }
    end
  end

  # GET /kojenadult_classes/1/edit
  def edit
    @kojenadult_class = KojenadultClasse.find(params[:id])
  end

  # POST /kojenadult_classes
  # POST /kojenadult_classes.xml
  def create
    @kojenadult_class = KojenadultClasse.new(params[:kojenadult_class])

    respond_to do |format|
      if @kojenadult_class.save
        format.html { redirect_to(@kojenadult_class, :notice => 'Kojenadult classe was successfully created.') }
        format.xml  { render :xml => @kojenadult_class, :status => :created, :location => @kojenadult_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_classes/1
  # PUT /kojenadult_classes/1.xml
  def update
    @kojenadult_class = KojenadultClasse.find(params[:id])

    respond_to do |format|
      if @kojenadult_class.update_attributes(params[:kojenadult_class])
        format.html { redirect_to(@kojenadult_class, :notice => 'Kojenadult classe was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_classes/1
  # DELETE /kojenadult_classes/1.xml
  def destroy
    @kojenadult_class = KojenadultClasse.find(params[:id])
    @kojenadult_class.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_classes_url) }
      format.xml  { head :ok }
    end
  end
end
