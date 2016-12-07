Facter.add('wicked_realm') do
  setcode 'awk \'/default_realm/{print $NF}\' /etc/krb5.conf'
end
