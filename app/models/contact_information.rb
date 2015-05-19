class ContactInformation < ActiveRecord::Base
  validates :line_1, presence: true
  validates :line_2, presence: true
  validates :pincode, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :contact_number, presence: true
end
