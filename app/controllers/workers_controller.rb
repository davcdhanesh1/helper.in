class WorkersController < ApplicationController
  def index
  end

  def new
    @worker = Worker.new
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def create
    @worker = Worker.create(validate_params_for_creation) 
    redirect_to worker_url(@worker)
  end

  private
  
  def validate_params_for_creation
    params.require(:worker).permit(:firstname, :sirname, :age, :educational_background, :work_background, :native_city)
  end
end
