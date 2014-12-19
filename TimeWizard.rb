class TimeWizard
  #START_DATE = "2014-09-01 HH:MM:SS -0800"
  def initialize(year = "2014", month="09", day="01", hour = "00",
                 minutes = "00", seconds = "00",
                 timezone = "-0800")
    @year = year
    @month = month
    @day = day
    @hour = hour
    @minutes = minutes
    @seconds = seconds
    @timezone = timezone
    @date = generate_date
    puts @date
  end

  def generate_date
    @date = @year + "-" + @month + "-" + @day + " " + @hour + ":" + @minutes + ":" + @seconds + " " + @timezone
  end

  def add_file name
    system("git add #{name}")
  end

  def commit_file name
    #Enviroment variables can only exist within a subprocess
    #This works perfectly since we want these dates to be temporary anyways
    fork do
      ENV['GIT_AUTHOR_DATE']="#{@date}"
      ENV['GIT_COMMITTER_DATE']="#{@date}"
      system("git commit -m 'Completed #{name} challenge'")
    end
  end

  def teleport_file name
    generate_date
    add_file name
    commit_file name
  end

  def increment_day_by number_of_days
    @day += number_of_days
  end
end

#ruby -r "./TimeWizard.rb" -e "runTimeWizard('Bool.java', 1)"
def runTimeWizard(file, days_ahead) 
  time = TimeWizard.new
  time.teleport_file("#{file}")
  time.increment_day_by(days_ahead)
e
