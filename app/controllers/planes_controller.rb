class PlanesController < ApplicationController

  def index
    # render text: "Hello, pilots!"
    @planes = Plane.all
    render :index
  end

  def create
    # new plane data from form
    plane_params = params.require(:plane).permit(:name, :design, :description)

    # create new plane in db
    plane = Plane.create(plane_params)

    # redirect to plane's show page
    redirect_to "/planes/#{plane.id}"
  end

  def new
    render :new
  end

  def edit
    #set id from url params
    plane_id = params[:id]

    #find plane in db by its id
    @plane = Plane.find(plane_id)

    #render edit view
    render :edit
  end

  def show
   # set id from url params
   plane_id = params[:id]

   # find plane in db by its id
   @plane = Plane.find(plane_id)

   # render show view
   render :show
  end

  def update
    #set id from url params
    plane_id = params[:id]

    #find plane in db by its id
    @plane = Plane.find(plane_id)

    #updated plane data from form
    plane_params = params.require(:plane).permit(:name, :design, :description)

    #update the plane in the db
    @plane.update_attributes(plane_params)

    #redirect to the plane's show page
    render :show
  end

  def destroy
    #set id from url params
    plane_id = params[:id]

    #find plane in db by its id
    @plane = Plane.find(plane_id)

    #destroy plane
    @plane.destroy

    #redirect to the index page
    redirect_to '/planes/'
  end

end
