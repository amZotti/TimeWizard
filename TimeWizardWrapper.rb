require '~/TimeWizard/TimeWizard.rb'

class TimeWizardWrapper

  #Static methods are really instance methods of class's eigenclass
  #We need to do this so we can alias to a static method
  class << self

    #ruby -r "./TimeWizard.rb" -e "runTimeWizard('Bool.java')"
    def run(filename, days = "01", months = "01")

      time = TimeWizard.new(
        month = months.to_s,
        day = days.to_s,
        hours(),
        minutes(),
        seconds()
      )

      time.teleport_file("#{filename}")
    end

    #Next: Make arguments  increment amount on each iteration
    #Executes all files in current directory
    def run_all(days = "01", months = "09")
      Dir.glob('*.java') do |filename|
        run(filename, days, months) 
        days = days.to_i
        days += 1
        days = days.to_s
      end
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
