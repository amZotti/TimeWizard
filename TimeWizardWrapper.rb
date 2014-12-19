require '~/TimeWizard/TimeWizard.rb'

class TimeWizardWrapper
  class << self
    def create_time_wizard(days, months)
      time_wizard = TimeWizard.new(
        months.to_s,
        days.to_s,
        hours(),
        minutes(),
        seconds()
      )
      time_wizard
    end

    def run(filename, days = "01", months = "01", message = "")
      time_wizard = create_time_wizard(days, months)
      if message.empty? then message = "Create #{filename}" end
      time_wizard.teleport_file("#{filename}", "#{message}")
    end

    def commitTracked(days = "01", months = "01", message ="")
      time_wizard = create_time_wizard(days, months)
      if message.empty? then message = "Create files" end
      time_wizard.commit_file("#{message}")
    end

    def run_all(days = "01", months = "09")
      Dir.glob('*.*') do |filename|
        run(filename, days, months)
        days.next!
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
