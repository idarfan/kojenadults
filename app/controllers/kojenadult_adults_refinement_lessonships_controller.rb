class KojenadultAdultsRefinementLessonshipsController < ApplicationController
  # GET /kojenadult_adults_refinement_lessonships
  # GET /kojenadult_adults_refinement_lessonships.xml
  def index
    @kojenadult_adults_refinement_lessonships = KojenadultAdultsRefinementLessonship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_adults_refinement_lessonships }
    end
  end

  # GET /kojenadult_adults_refinement_lessonships/1
  # GET /kojenadult_adults_refinement_lessonships/1.xml
  def show
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_adults_refinement_lessonship }
    end
  end

  # GET /kojenadult_adults_refinement_lessonships/new
  # GET /kojenadult_adults_refinement_lessonships/new.xml
  def new
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_adults_refinement_lessonship }
    end
  end

  # GET /kojenadult_adults_refinement_lessonships/1/edit
  def edit
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.find(params[:id])
  end

  # POST /kojenadult_adults_refinement_lessonships
  # POST /kojenadult_adults_refinement_lessonships.xml
  def create
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.new(params[:kojenadult_adults_refinement_lessonship])

    respond_to do |format|
      if @kojenadult_adults_refinement_lessonship.save
        format.html { redirect_to(@kojenadult_adults_refinement_lessonship, :notice => 'Kojenadult adults refinement lessonship was successfully created.') }
        format.xml  { render :xml => @kojenadult_adults_refinement_lessonship, :status => :created, :location => @kojenadult_adults_refinement_lessonship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult_adults_refinement_lessonship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadult_adults_refinement_lessonships/1
  # PUT /kojenadult_adults_refinement_lessonships/1.xml
  def update
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.find(params[:id])

    respond_to do |format|
      if @kojenadult_adults_refinement_lessonship.update_attributes(params[:kojenadult_adults_refinement_lessonship])
        format.html { redirect_to(@kojenadult_adults_refinement_lessonship, :notice => 'Kojenadult adults refinement lessonship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_adults_refinement_lessonship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_adults_refinement_lessonships/1
  # DELETE /kojenadult_adults_refinement_lessonships/1.xml
  def destroy
    @kojenadult_adults_refinement_lessonship = KojenadultAdultsRefinementLessonship.find(params[:id])
    @kojenadult_adults_refinement_lessonship.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_adults_refinement_lessonships_url) }
      format.xml  { head :ok }
    end
  end
end
