#patient has many appointments
#appointments belong to a patient
class Patient

   attr_accessor :name, :appointments, :doctor
   attr
  @@all = []

   def initialize(name)
     @appointments=[]
    @name = name#
    @@all << self
  end

   def self.all
    @@all
  end

   def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

   def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

   def new_appointment(doctor, date)
    Appointment.new(date, self , doctor)
  end

 end 