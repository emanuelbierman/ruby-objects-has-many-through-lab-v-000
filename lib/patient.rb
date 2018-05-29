class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    doctors = []
    Appointment.all.map do |appt|
      if appt.patient == self
        doctors << appt.doctor
      end
    end
  end
end
