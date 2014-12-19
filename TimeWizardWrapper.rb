require '~/TimeWizard/TimeWizard.rb'

class TimeWizardWrapper

  #Static methods are really instance methods of class's eigenclass
  #We need to do this so we can alias to a static method
  class << self

    #ruby -r "./TimeWizard.rb" -e "runTimeWizard('Bool.java')"
    def run(file, days = "01", months = "09")

      time = TimeWizard.new(
        month = months.to_s,
        day = days.to_s,
        hours(),
        minutes(),
        seconds()
      )

      time.teleport_file("#{file}")
    end

    def minutes
      (rand(58) + 1).to_s
    end

    def hours
      (rand(22) + 1).to_s
    end

    alias :seconds :minutes

  end
end
