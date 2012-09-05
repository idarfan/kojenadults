class AdultsRefinementLessonsController < ApplicationController
  # GET /adults_refinement_lessons
  # GET /adults_refinement_lessons.xml
  def index
    @adults_refinement_lessons = AdultsRefinementLesson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_refinement_lessons }
    end
  end

  # GET /adults_refinement_lessons/1
  # GET /adults_refinement_lessons/1.xml
  def show
    @adults_refinement_lesson = AdultsRefinementLesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_refinement_lesson }
    end
  end

  # GET /adults_refinement_lessons/new
  # GET /adults_refinement_lessons/new.xml
  def new
    @adults_refinement_lesson = AdultsRefinementLesson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_refinement_lesson }
    end
  end

  # GET /adults_refinement_lessons/1/edit
  def edit
    @adults_refinement_lesson = AdultsRefinementLesson.find(params[:id])
  end

  # POST /adults_refinement_lessons
  # POST /adults_refinement_lessons.xml
  def create
    @adults_refinement_lesson = AdultsRefinementLesson.new(params[:adults_refinement_lesson])

    respond_to do |format|
      if @adults_refinement_lesson.save
        format.html { redirect_to(@adults_refinement_lesson, :notice => 'Adults refinement lesson was successfully created.') }
        format.xml  { render :xml => @adults_refinement_lesson, :status => :created, :location => @adults_refinement_lesson }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_refinement_lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_refinement_lessons/1
  # PUT /adults_refinement_lessons/1.xml
  def update
    @adults_refinement_lesson = AdultsRefinementLesson.find(params[:id])

    respond_to do |format|
      if @adults_refinement_lesson.update_attributes(params[:adults_refinement_lesson])
        format.html { redirect_to(@adults_refinement_lesson, :notice => 'Adults refinement lesson was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_refinement_lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_refinement_lessons/1
  # DELETE /adults_refinement_lessons/1.xml
  def destroy
    @adults_refinement_lesson = AdultsRefinementLesson.find(params[:id])
    @adults_refinement_lesson.destroy

    respond_to do |format|
      format.html { redirect_to(adults_refinement_lessons_url) }
      format.xml  { head :ok }
    end
  end
end
