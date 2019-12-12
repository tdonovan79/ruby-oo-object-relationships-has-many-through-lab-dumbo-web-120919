class Patient
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    @@all = []
    def self.all
        @@all
    end

    def new_appointment(new_doctor, appointment_date)
        Appointment.new(appointment_date, self, new_doctor, )
    end

    #finds all appointments in patient
    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end
    #finds all artists in patient
    def doctors
        Appointment.all.map do |appointment|
            if appointment.patient == self
                appointment.doctor
            end
        end
    end
end