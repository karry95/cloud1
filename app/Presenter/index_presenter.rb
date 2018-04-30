module Doctors
    class IndexPresenter
      def patient_apointment_count
        Doctor.patient_count
    end
  end
end