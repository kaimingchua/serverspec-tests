require 'spec_helper'

#SERVICE CHECK
describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

#PORTS CHECK
describe port(22) do
  it { should be_listening }
end

describe port(80) do
  it { should be_listening }
end

describe port(443) do
  it { should be_listening }
end

describe port(8000) do
  it { should be_listening }
end

describe port(27017) do
  it { should be_listening }
end


#DEPENDENCY CHECK
describe command('node -v') do
  its(:stdout) { should match 'v10.13.0' }
end

describe command('npm show @awspilot/dynamodb version') do
  its(:stdout) { should be >= '1.2.8' }
end

describe command('npm show activedirectory version') do
  its(:stdout) { should be >= '0.4.1' }
end

describe command('npm show async version') do
  its(:stdout) { should be >= '0.2.9' }
end

describe command('npm show aws-sdk version') do
  its(:stdout) { should be >= '2.357.0' }
end

describe command('npm show bson-objectid version') do
  its(:stdout) { should be >= '1.2.4' }
end

describe command('npm show connect-mongo version') do
  its(:stdout) { should be >= '2.0.1' }
end

describe command('npm show csv version') do
 its(:stdout) { should be >= '0.3.0' }
end

describe command('npm show express version') do
  its(:stdout) { should be >= '3.1.0' }
end

describe command('npm show helmet version') do
  its(:stdout) { should be >= '0.0.9' }
end

describe command('npm show ldapjs version') do
  its(:stdout) { should be >= '0.7.1' }
end

describe command('npm show linq version') do
  its(:stdout) { should be >= '3.1.1' }
end

describe command('npm show log4js version') do
  its(:stdout) { should be >= '0.6.8' }
end

describe command('npm show moment version') do
  its(:stdout) { should be >= '2.0.0' }
end

describe command('npm show mongodb version') do
  its(:stdout) { should be >= '2.2.19' }
end

describe command('npm show multer version') do
  its(:stdout) { should be >= '1.3.0' }
end

describe command('npm show node-schedule version') do
  its(:stdout) { should be >= '0.1.8' }
end

describe command('npm show nodemailer version') do
  its(:stdout) { should be >= '0.5.2' }
end

describe command('npm show passport version') do
  its(:stdout) { should be >= '0.1.16' }
end

describe command('npm show passport-local version') do
  its(:stdout) { should be >= '0.1.6' }
end

describe command('npm show service version') do
  its(:stdout) { should be >= '0.1.4' }
end

describe command('npm show underscore version') do
  its(:stdout) { should be >= '1.8.3' }
end

describe command('npm show xlsjs version') do
  its(:stdout) { should be >= '0.7.6' }
end

describe command('npm show xlsx version') do
  its(:stdout)  { should be >= '0.10.1' }
end
