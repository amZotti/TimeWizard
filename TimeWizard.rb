class TimeWizard
  YEAR = "2014"
  #FORMAT "2014-09-01 HH:MM:SS -0800"
  def initialize(month="01", day="01", hour = "00",
                 minutes = "00", seconds = "00",
                 timezone = "-0800")
    @year = YEAR
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
    @year + "-" + @month + "-" + @day + " " + @hour + ":" + @minutes + ":" + @seconds + " " + @timezone
  end

  def add_file name
    system("git add #{name}")
  end

  def commit_file(message)
    ENV['GIT_AUTHOR_DATE']="#{@date}"
    ENV['GIT_COMMITTER_DATE']="#{@date}"
    system("git commit -m \"#{message}\"")
  end

  def teleport_file(name, message)
    add_file(name)
    commit_file(message)
  end
end
