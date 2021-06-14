class Appointment < ApplicationRecord
  belongs_to :medical_center
  belongs_to :worker
end
