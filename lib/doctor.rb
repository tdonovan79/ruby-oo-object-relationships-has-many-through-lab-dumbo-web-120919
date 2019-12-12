class Doctor
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []
    def self.all
        @@all
    end

    #creates new song beloning to the doctor
    def new_appointment(new_patient, appointment_date)
        Appointment.new(appointment_date, new_patient, self)
    end
    #finds all appointments by doctor
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end
    #lists genre of all appointments, with repeats
    def patients
        Appointment.all.map do |appointment|
            if appointment.doctor == self
                appointment.patient
            end
        end
    end
end