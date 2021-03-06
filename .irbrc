require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
# IRB.conf[:SAVE_HISTORY] = 1000
# IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

def y(obj)
  puts obj.to_yaml
end

begin
  require 'fancy_irb'
  FancyIrb.start
rescue LoadError => E
  p E
end

begin
  require 'awesome_print'
rescue LoadError => E
  p E
end
  
begin
  require 'wirb'
  Wirb.start
rescue LoadError => E
  p E
end
  
begin
  require 'rubygems'
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => E
  p E
end
  
begin
  require 'hirb'
  Hirb.enable
rescue LoadError => E
  p E
end


