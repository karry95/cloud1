class AppointmentPdf < Prawn::Document
   def initialize(doctors)
       super()
       @doctors = Doctor.order("id DESC").all
       patient_appointment_name
   end
   
   def patient_appointment_name
       table patient_appointment_name_all do
           row(0).font_style = :bold
           columns(1..3).alight = :right
           self.row_colors = ["DDDDDD", "FFFFFF"]
           self.header = true
   end
   end
   
   def patient_appointment_name_all
       [["Patient", "Date", "Time", "Details"]] +
       @doctors.map do |doctor|
           [doctor.patient, doctor.date, doctor.time, doctor.details]
         end
   end
end 