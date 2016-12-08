require 'spec_helper'

describe(:apache, :type => :class) do
  let(:node) { 'testhost.example.com' }

  context 'when called with no parameters on redhat' do
    let(:facts) { { :operatingsystem => 'redhat' } }

    it { should compile() }

    it { should contain_package('apache').with({
      'ensure' => 'present',
      'name'   => 'httpd',
    })}

  end


  context 'when called with no parameters on debian' do
    let(:facts) { { :operatingsystem => 'debian' } }

    it { should compile() }

    it { should contain_package('apache').with({
      'ensure' => 'present',
      'name'   => 'apache2',
    })}

    it { should contain_file('apache_config') }

  end

end
