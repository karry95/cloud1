class PatientPdf < Prawn::Document
   def initialize(patients)
       super()
       @patients = Patient.order("id DESC").all
       patient_name
   end
   
   def patient_name
       table patient_name_all do
           row(0).font_style = :bold
           columns(1..3).alight = :right
           self.row_colors = ["DDDDDD", "FFFFFF"]
           self.header = true
   end
   end
   
   def patient_name_all
       [["Name", "contact", "date_of_birth", "Address", "injury", "action"]] +
       @patients.map do |patient|
           [patient.name, patient.contact, patient.date_of_birth, patient.address, patient.injury, patient.action]
         end
   end
end 