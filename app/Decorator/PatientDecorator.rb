class PatientDecorator
    attr_reader :component
    
    def initialize(component)
        @component = component
    end
end
