class KojenadultsClasseShipsController < ApplicationController
  # GET /kojenadults_classe_ships
  # GET /kojenadults_classe_ships.xml
  def index
    @kojenadults_classe_ships = KojenadultsClasseShip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadults_classe_ships }
    end
  end

  # GET /kojenadults_classe_ships/1
  # GET /kojenadults_classe_ships/1.xml
  def show
    @kojenadults_classe_ship = KojenadultsClasseShip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadults_classe_ship }
    end
  end

  # GET /kojenadults_classe_ships/new
  # GET /kojenadults_classe_ships/new.xml
  def new
    @kojenadults_classe_ship = KojenadultsClasseShip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadults_classe_ship }
    end
  end

  # GET /kojenadults_classe_ships/1/edit
  def edit
    @kojenadults_classe_ship = KojenadultsClasseShip.find(params[:id])
  end

  # POST /kojenadults_classe_ships
  # POST /kojenadults_classe_ships.xml
  def create
    @kojenadults_classe_ship = KojenadultsClasseShip.new(params[:kojenadults_classe_ship])

    respond_to do |format|
      if @kojenadults_classe_ship.save
        format.html { redirect_to(@kojenadults_classe_ship, :notice => 'Kojenadults classe ship was successfully created.') }
        format.xml  { render :xml => @kojenadults_classe_ship, :status => :created, :location => @kojenadults_classe_ship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadults_classe_ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadults_classe_ships/1
  # PUT /kojenadults_classe_ships/1.xml
  def update
    @kojenadults_classe_ship = KojenadultsClasseShip.find(params[:id])

    respond_to do |format|
      if @kojenadults_classe_ship.update_attributes(params[:kojenadults_classe_ship])
        format.html { redirect_to(@kojenadults_classe_ship, :notice => 'Kojenadults classe ship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadults_classe_ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadults_classe_ships/1
  # DELETE /kojenadults_classe_ships/1.xml
  def destroy
    @kojenadults_classe_ship = KojenadultsClasseShip.find(params[:id])
    @kojenadults_classe_ship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadults_classe_ships_url) }
      format.xml  { head :ok }
    end
  end
end
