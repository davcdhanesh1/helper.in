class VerificationDocument < ActiveRecord::Base
  extend ApplicationHelper

  class << self
    
    def accepted_document_types
      get_values_from_options_for_selection(document_options) 
    end

    def document_options 
     [
      ['Passport', 'passport'],
      ['Driver license', 'driver-license'],
      ['Nationality certificate', 'nationality'],
      ['Adhar card', 'adhar-card']
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
