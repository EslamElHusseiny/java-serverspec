require 'serverspec'

set :backend, :exec


describe package('jdk-1.7.0_79-fcs.x86_64') do
	it { should be_installed.by('rpm').with_version('1.7.0_79-fcs.x86_64') }
end

describe file('/etc/profile.d/java.sh') do
	it { should be_file }
	its(:content) { should match /export JAVA_HOME=\/usr\/java\/default/ }
	it { should be_mode 644 }
	it { should be_owned_by 'root' }
	it { should be_grouped_into 'root' }
end

describe file('/usr/java/latest') do
	it { should be_symlink }
	it { should be_lined_to '/usr/java/jdk1.7.0_79' }
end
