class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    appts = Appointment.all.select do |appt|
      appt.patient == self
    end
  end
end
