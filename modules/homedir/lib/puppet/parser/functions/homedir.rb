module Puppet::Parser::Functions
  newfunction(:homedir, :type => :rvalue) do |args|
    File.expand_path('.');
  end
end
