class WorkersController < ApplicationController
  before_action :logged_in_as_admin, only: [:new, :create]

  def new
    @worker = Worker.new
    @worker.build_contact_information
    @worker.build_verification_document
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def create
    @worker = Worker.new(valid_params_for_worker) 
    contact_information = ContactInformation.new(valid_params_for_contact_information)
    verification_document = VerificationDocument.new(valid_params_for_verification_document)
    @worker.contact_information = contact_information
    @worker.verification_document = verification_document

    if @worker.valid?
      @worker.save!
      redirect_to worker_url(@worker)
    else 
      flash.now[:errors] = @worker.errors.full_messages
      render :new
    end
  end

  def search

  end

  private

  def valid_params_for_verification_document
    params.require(:worker)[:verification_document].permit(:document_type, :picture)
  end
  
  def valid_params_for_contact_information
    params.require(:worker)[:contact_information].permit(:line_1, :line_2, :pincode, :city, :state, :contact_number, :email)
  end
  
  def valid_params_for_worker
    params.require(:worker).permit(:firstname, :sirname, :age, :educational_background, :work_background, :native_city,
                                   :expertise, :profile_picture )
  end
end
