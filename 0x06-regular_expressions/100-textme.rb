#!/usr/bin/env ruby
# Check if the script is called with the correct number of arguments
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit(1)
end

# Define the regex pattern to extract sender, receiver, and flags
pattern = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Read the log file specified in the command line argument
log_file = ARGV[0]

# Process the log file
File.open(log_file, "r") do |file|
  file.each_line do |line|
    match_data = line.match(pattern)
    if match_data
      sender = match_data[1]
      receiver = match_data[2]
      flags = match_data[3]
      puts "#{sender},#{receiver},#{flags}"
    end
  end
end
