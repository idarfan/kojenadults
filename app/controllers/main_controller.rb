class MainController < ApplicationController
  skip_before_filter :authorize
  def index
    @kojenadults = Kojenadult.all
    @kojenadult_classes = KojenadultClasse.all
    @lessonrecords = Lessonrecord.all
  end
end