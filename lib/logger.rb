module Logger

  def log(message)
    output = "#{Time.now} : #{message}"
    File.open("log.txt", "w") do |logfile|
      logfile << output
    end

end
