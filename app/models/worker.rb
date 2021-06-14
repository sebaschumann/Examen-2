class Worker < ApplicationRecord
  belongs_to :worker_type

has_many :appointments
has_many :guards

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :phone_number, :presence => true
validates :email, :presence => true
validates :worker_type, :presence => true



def full_name
  first_name + " " + last_name
end
end
