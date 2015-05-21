class Worker < ActiveRecord::Base
  extend ApplicationHelper

  class << self
    def accepted_expertise 
      get_values_from_options_for_selection(expertise_options)
    end

    def expertise_options
      [['Cook', 'cook'],
       ['House maid', 'house-maid'],
       ['Plumber', 'plumber'],
       ['Electrician', 'electrician'],
       ['Carpenter', 'carpenter'],
       ['Painter', 'painter'],
       ['Gardner', 'gardner' ],
       ['Paste Control', 'paste-control'],
       ['Security Guard', 'security-guard'],
       ['Construction Worker', 'construction-worker'],
       ['Driver', 'driver'],
       ['Cleaners', 'cleaner'],
       ['Raddiwala', 'raddiwala'],
       ['Fabricator', 'fabricator'],
       ['Glass Repair', 'glass-repair'],
       ['Cushion / furniture repair', 'cushion-repair'],
       ['Shoe maker', 'shoe-maker'],
       ['Bhadaji / Pandit', 'bhataji-pandit'],
       ['Legal work / lawyers', 'legal-work-lawyer'],
       ['Dough Mill', 'mill-worker']
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

  has_one :contact_information
  accepts_nested_attributes_for :contact_information

  has_one :verification_document
  accepts_nested_attributes_for :verification_document

  has_attached_file :profile_picture, :styles => {:medium => "400x500", :thumb => "100x100"}
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :profile_picture

end
