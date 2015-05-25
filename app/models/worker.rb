class Worker < ActiveRecord::Base
  class << self
    def accepted_expertise 
      ['cook',
       'house_maid',
       'electrician',
       'car_penter',
       'painter',
       'gardner',
       'paste_control',
       'security_guard',
       'construction_worker',
       'driver',
       'cleaner',
       'raddiwala',
       'fabricator',
       'glass_repair',
       'cushion_repair',
       'shoe_maker',
       'bhataji_pandit',
       'legal_work_lawyer',
       'floor_mill'
      ]
    end

  end

  validates :firstname, presence: true
  validates :sirname, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 80 }, presence: true
  validates :educational_background, presence: true
  validates :work_background, presence: true
  validates :native_city, presence: true
  validates :expertise, presence: true, inclusion: {in: accepted_expertise }

  has_one :contact_information, dependent: :destroy
  accepts_nested_attributes_for :contact_information

  has_one :verification_document, dependent: :destroy
  accepts_nested_attributes_for :verification_document

  has_attached_file :profile_picture, :styles => {:medium => "300x300#", :thumb => "100x100#"}
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :profile_picture

end
