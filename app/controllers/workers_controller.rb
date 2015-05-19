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
    @worker = Worker.new(validate_params_for_creation) 
    if @worker.valid?
      @worker.save!
      redirect_to worker_url(@worker)
    else 
      flash.now[:errors] = @worker.errors.full_messages
      render :new
    end
  end

  private
  
  def validate_params_for_creation
    params.require(:worker).permit(:firstname, :sirname, :age, :educational_background, :work_background, :native_city,
                                   :expertise)
  end
end
