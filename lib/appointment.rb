#require "pry"
class Appointment

   attr_accessor :date, :patient, :doctor
  @@all = []

   def initialize(date, patient, doctor)
   
    @date = date
     @patient = patient
     patient.appointments  << self
    @doctor = doctor
    @@all << self
    #binding.pry
  end

   def self.all
    @@all
  end
end 