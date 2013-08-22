require 'rake'

@ignore_files = [
  '.',
  '..',
  '.DS_Store',
  '.git',
  'Rakefile',
  'README.md'
]

class Puts
  class << self
    def success(message)
      puts "\e[32m#{message}\e[0m"
    end 
    def error(message)
      puts "\e[31m#{message}\e[0m"
    end 
  end 
end

task :install do
  paths = Dir::entries('.')
  paths.each do |path|
    if !@ignore_files.include?(path)
      if !File.exist?(ENV['HOME'] + '/' + path)
        from = File.expand_path(path, "~")
        to = File.expand_path(path)
        File.symlink(to, from)
        Puts.success("~/#{path} symlink created")
      else
        Puts.error("~/#{path} is already exists")
      end
    end
  end
end

task :default => :install
