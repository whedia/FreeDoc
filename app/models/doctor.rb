class Doctor < ApplicationRecord
  belongs_to :city
  has_many :jobs
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :specialities, through: :jobs
end
