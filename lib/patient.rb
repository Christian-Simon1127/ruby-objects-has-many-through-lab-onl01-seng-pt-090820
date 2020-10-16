class Patient 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
    Appointment.all << appointment
    appointment
  end
  
  def appointments
    Appointment.all.select { |appointment|
      appointment.patient == self
    }
  end
  
  def doctors
<<<<<<< HEAD
    self.appointments.collect { |appointment|
=======
    self.appointments.select { |appointment|
>>>>>>> 95be522103e18b87f80f229e0fe422bd82d1c346
      appointment.doctor
    }
  end
  
  
  
  
end