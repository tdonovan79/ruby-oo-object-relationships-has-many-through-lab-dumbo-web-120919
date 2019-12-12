class Appointment
    attr_accessor :patient, :doctor, :date
    def initialize(date, patient, doctor)
        @patient = patient
        @doctor = doctor
        @date = date
        @@all << self
    end
    @@all = []

    def self.all
        @@all
    end
end