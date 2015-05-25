class VerificationDocument < ActiveRecord::Base

  class << self
    
    def accepted_document_types
      [
        'passport',
        'driver_license',
        'nationality',
        'adhar_card'
      ]
    end

  end

  validates :document_type, presence: true, 
            inclusion: {in: accepted_document_types }

  belongs_to :worker

  has_attached_file :picture, :styles => {:medium => "400x500", :thumb => "100x100"}
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :picture

end
