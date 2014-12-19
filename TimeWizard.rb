class TimeWizard
  #START_DATE = "2014-09-01 HH:MM:SS -0800"
  def initialize(year = "2014", month="01", day="01", hour = "00",
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
    puts "hours: #{@hour}"
    puts "minutes: #{@minutes}"
    puts "seconds: #{@seconds}"
    @year + "-" + @month + "-" + @day + " " + @hour + ":" + @minutes + ":" + @seconds + " " + @timezone
  end

  def add_file name
    system("git add #{name}")
  end

  def commit_file name
    ENV['GIT_AUTHOR_DATE']="#{@date}"
    ENV['GIT_COMMITTER_DATE']="#{@date}"
    system("git commit -m 'Completed #{name} challenge'")
  end

  def teleport_file name
    generate_date
    add_file name
    commit_file name
  end
end

#ruby -r "./TimeWizard.rb" -e "runTimeWizard('Bool.java')"
def runTimeWizard(file, months = "09", days = "01")
  time = TimeWizard.new(
    month = months,
    day = days,
    hour = hours(),
    minutes = minutes(),
    seconds = seconds())

  time.teleport_file("#{file}")
end

def minutes
  (rand(58) + 1).to_s
end
alias :seconds :minutes

def hours
  (rand(22) + 1).to_s
end
