require "note_time/version"

module NoteTime
  # Your code goes here...
  
  if defined?(::Rails::Engine)
      class Engine < ::Rails::Engine # :nodoc:
        initializer 'note_time', group: :all do |_app|
          ActiveSupport.on_load(:action_controller) do
            include Rails::NoteTime::Helper
          end

          ActiveSupport.on_load(:action_view) do
            include Rails::NoteTime::Helper
          end
      end
end

    
