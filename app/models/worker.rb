class Worker < ActiveRecord::Base
  validates :firstname, presence: true
  validates :sirname, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 80 }, presence: true
  validates :educational_background, presence: true
  validates :work_background, presence: true
  validates :native_city, presence: true
  validates :expertise, presence: true

  has_one :contact_information
  accepts_nested_attributes_for :contact_information
end
