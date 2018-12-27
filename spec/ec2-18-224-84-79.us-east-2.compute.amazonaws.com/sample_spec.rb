require 'spec_helper'
$node = '/home/ec2-user/.nvm/versions/node/v10.13.0/bin/node'
$npm = '/home/ec2-user/.nvm/versions/node/v10.13.0/bin/npm'
describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
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
describe command("#$node -v 2>&1") do
 its(:stdout) { should match 'v10.13.0' }
end

describe command("#$node show @awspilot/dynamodb -v 2>&1") do
 its(:stdout) { should be >= '1.2.8' }
end

describe command("#$node show abbrev -v 2>&1") do
 its(:stdout) { should be >= '1.1.1' }
end

describe command("#$node show addressparser -v 2>&1") do
 its(:stdout) { should be >= '0.3.2' }
end

describe command("#$node show adler-32 -v 2>&1") do
 its(:stdout) { should be >= '1.1.0' }
end

describe command("#$node show append-field -v 2>&1") do
 its(:stdout) { should be >= '0.1.0' }
end

describe command("#$node show assert-plus -v 2>&1") do
 its(:stdout) { should be >= '0.1.5' }
end

describe command("#$node show asn1 -v 2>&1") do
 its(:stdout) { should be >= '0.2.1' }
end

describe command("#$node show async -v 2>&1") do
  its(:stdout) { should be >= '0.2.9' }
end

describe command("#$node show aws-sdk -v 2>&1") do
  its(:stdout) { should be >= '2.357.0' }
end

describe command("#$node show activedirectory -v 2>&1") do
  its(:stdout) { should be >= '0.4.1' }
end

describe command("#$node show base64-js -v 2>&1") do
 its(:stdout) { should be >= '1.3.0' }
end

describe command("#$node show bson -v 2>&1") do
 its(:stdout) { should be >= '1.0.9' }
end

describe command("#$node show bson-objectid -v 2>&1") do
  its(:stdout) { should be >= '1.2.4' }
end

describe command("#$node show buffer-crc32 -v 2>&1") do
 its(:stdout) { should be >= '0.2.13' }
end 

describe command("#$node show buffer-from -v 2>&1") do
 its(:stdout) { should be >= '1.1.1' }
end

describe command("#$node show buffer-shims -v 2>&1") do
 its(:stdout) { should be >= '1.0.0' }
end

describe command("#$node show buffer -v 2>&1") do
 its(:stdout) { should be >= '4.9.1' }
end

describe command("#$node show bunyan -v 2>&1") do
 its(:stdout) { should be >= '0.22.1' }
end

describe command("#$node show busboy -v 2>&1") do
 its(:stdout) { should be >= '0.2.14' }
end

describe command("#$node show bytes -v 2>&1") do
 its(:stdout) { should be >= '0.2.0' }
end

describe command("#$node show cfb -v 2>&1") do
 its(:stdout) { should be >= '0.11.1' }
end

describe command("#$node show codepage -v 2>&1") do
 its(:stdout) { should be >= '1.14.0' }
end

describe command("#$node show commander -v 2>&1") do
 its(:stdout) { should be >= '0.6.1' }
end

describe command("#$node show colors -v 2>&1") do
 its(:stdout) { should be >= '0.6.2' }
end

describe command("#$node show connect -v 2>&1") do
 its(:stdout) { should be >= '2.7.5' }
end

describe command("#$node show concat-stream -v 2>&1") do
 its(:stdout) { should be >= '1.6.2' }
end

describe command("#$node show connect-dynamodb -v 2>&1") do
 its(:stdout) { should be >= '2.0.2' }
end

describe command("#$node show connect-mongo -v 2>&1") do
 its(:stdout) { should be >= '2.0.1' }
end

describe command("#$node show cookie -v 2>&1") do
 its(:stdout) { should be >= '0.0.5' }
end

describe command("#$node show cookie-signature -v 2>&1") do
 its(:stdout) { should be >= '1.0.0' }
end

describe command("#$node show core-util-is -v 2>&1") do
 its(:stdout) { should be >= '1.0.2' }
end

describe command("#$node show crc -v 2>&1") do
 its(:stdout) { should be >= '3.4.4' }
end

describe command("#$node show crc-32 -v 2>&1") do
 its(:stdout) { should be >= '1.1.1' }
end

describe command("#$node show cron-parser -v 2>&1") do
 its(:stdout) { should be >= '0.3.6' }
end

describe command("#$node show csv -v 2>&1") do
 its(:stdout) { should be >= '0.3.0' }
end

describe command("#$node show daemon -v 2>&1") do
 its(:stdout) { should be >= '1.1.0' }
end

describe command("#$node show debug -v 2>&1") do
 its(:stdout) { should be >= '4.1.0' }
end

describe command("#$node show depd -v 2>&1") do
 its(:stdout) { should be >= '1.1.2' }
end

describe command("#$node show dicer -v 2>&1") do
 its(:stdout) { should be >= '0.2.5' }
end

describe command("#$node show directmail -v 2>&1") do
 its(:stdout) { should be >= '0.1.8' }
end

describe command("#$node show dkim-signer -v 2>&1") do
 its(:stdout) { should be >= '0.1.2' }
end

describe command("#$node show dynamodb-store -v 2>&1") do
 its(:stdout) { should be >= '1.0.8' }
end 

describe command("#$node show ee-first -v 2>&1") do
 its(:stdout) { should be >= '1.1.1' }
end

describe command("#$node show encoding -v 2>&1") do
 its(:stdout) { should be >= '0.1.12' }
end

describe command("#$node show es6-promise -v 2>&1") do
 its(:stdout) { should be >= '3.2.1' }
end

describe command("#$node show events -v 2>&1") do
 its(:stdout) { should be >= '1.1.1' }
end

describe command("#$node show exit-on-epipe -v 2>&1") do
 its(:stdout) { should be >= '1.0.1' }
end

describe command("#$node show express -v 2>&1") do
 its(:stdout) { should be >= '3.1.2' }
end

describe command("#$node show express-session -v 2>&1") do
 its(:stdout) { should be >= '1.15.6' }
end

describe command("#$node show follow-redirects -v 2>&1") do
 its(:stdout) { should be >= '0.0.3' }
end

describe command("#$node show extsprintf -v 2>&1") do
 its(:stdout) { should be >= '1.0.0' }
end

describe command("#$node show formidable -v 2>&1") do
 its(:stdout) { should be >= '1.0.11' }
end

describe command("#$node show frac -v 2>&1") do
 its(:stdout) { should be >= '0.3.1' } 
end

describe command("#$node show fresh -v 2>&1") do
 its(:stdout) { should be >= '0.1.0' }
end

describe command("#$node show he -v 2>&1") do
 its(:stdout) { should be >= '0.3.6' }
end

describe command("#$node show helmet -v 2>&1") do
 its(:stdout) { should be >= '0.0.11' }
end

describe command("#$node show iconv-lite -v 2>&1") do
 its(:stdout) { should be >= '0.4.24' }
end

describe command("#$node show ieee754 -v 2>&1") do
 its(:stdout) { should be >= '1.1.8' } 
end

describe command("#$node show inherits -v 2>&1") do
 its(:stdout) { should be >= '2.0.3' }
end

describe command("#$node show isarray -v 2>&1") do
 its(:stdout) { should be >= '1.0.0' }
end 

describe command("#$node show jmespath -v 2>&1") do
 its(:stdout) { should be >= '0.15.0' }
end

describe command("#$node show json-schema -v 2>&1") do
 its(:stdout) { should be >=  '0.2.2' }
end

describe command("#$node show ldapjs -v 2>&1") do
 its(:stdout) { should be >='0.7.1' }
end

describe command("#$node show jsprim -v 2>&1") do
 its(:stdout) { should be >= '0.3.0' }
end

describe command("#$node show linq -v 2>&1") do
 its(:stdout) { should be >= '3.1.1' }
end

describe command("#$node show log4js -v 2>&1") do
 its(:stdout) { should be >= '0.6.38' }
end

describe command("#$node show mailcomposer -v 2>&1") do
 its(:stdout) { should be >+ '0.2.12' }
end

describe command("#$node show long-timeout -v 2>&1") do
 its(:stdout) { should be >= '0.0.2' }
end

describe command("#$node show media-typer -v 2>&1") do
 its(:stdout) { should be >= '0.3.0' }
end

describe command("#$node show methods -v 2>&1") do
 its(:stdout) { should be >= '0.0.1' }
end

describe command("#$node show mime -v 2>&1") do
 its(:stdout) { should be >= '1.2.6' }
end

describe command("#$node show mime-db -v 2>&1") do
 its(:stdout) { should be >= '1.37.0' }
end

describe command("#$node show mime-types -v 2>&1") do
 its(:stdout) { should be >= '2.1.21' }
end

describe command("#$node show minimist -v 2>&1") do
 its(:stdout) { should be >= '0.0.8' }
end

describe command("#$node show moment -v 2>&1") do
 its(:stdout) { should be >= '2.0.0' }
end

describe command("#$node show mkdirp -v 2>&1") do
 its(:stdout) { should be >= '0.3.5' }
end

describe command("#$node show mongodb -v 2>&1") do
 its(:stdout) { should be >= '2.2.36' }
end 

describe command("#$node show mongodb-core -v 2>&1") do
 its(:stdout) { should be >= '2.1.20' }
end

describe command("#$node show multer -v 2>&1") do
 its(:stdout) { should be >= '1.3.1' }
end
 
describe command("#$node show ms -v 2>&1") do
 its(:stdout) { should be >= '2.1.1' }
end

describe command("#$node show mv -v 2>&1") do
 its(:stdout) { should be >= '0.0.5' }
end

describe command("#$node show node-schedule -v 2>&1") do
 its(:stdout) { should be >= '0.1.16' }
end

describe command("#$node show nopt -v 2>&1") do
 its(:stdout) { should be >= '2.1.1' }
end

describe command("#$node show nodemailer -v 2>&1") do
 its(:stdout) { should be >= '0.5.15' }
end

describe command("#$node show object-assign -v 2>&1") do
 its(:stdout) { should be >= '3.0.0' }
end

describe command("#$node show on-finished -v 2>&1") do
 its(:stdout) { should be >= '2.3.0' }
end

describe command("#$node show on-headers -v 2>&1") do
 its(:stdout) { should be >= '1.0.1' }
end

describe command("#$node show once -v 2>&1") do
 its(:stdout) { should be >= '1.3.0' }
end

describe command("#$node show parseurl -v 2>&1") do
 its(:stdout) { should be >= '1.3.2' }
end

describe command("#$node show passport -v 2>&1") do
 its(:stdout) { should be >= '0.1.18' }
end

describe command("#$node show passport-local -v 2>&1") do
 its(:stdout) { should be >= '0.1.6' }
end

describe command("#$node show pause -v 2>&1") do
 its(:stdout) { should be >= '0.0.1' }
end

describe command("#$node show pkginfo -v 2>&1") do
 its(:stdout) { should be >= '0.2.3' }
end

describe command("#$node show mimelib -v 2>&1") do
 its(:stdout) { should be >= '0.2.19' }
end

describe command("#$node show printj -v 2>&1") do
 its(:stdout) { should be >= '1.1.2' }
end

describe command("#$node show process-nextick-args -v 2>&1") do
 its(:stdout) { should be >= '1.0.7' }
end

describe command("#$node show public-address -v 2>&1") do
 its(:stdout) { should be >= '0.1.2' }
end

describe command("#$node show punycode -v 2>&1") do
 its(:stdout) { should be >= '1.2.4' }
end

describe command("#$node show qs -v 2>&1") do
 its(:stdout) { should be >= '0.5.1' }
end

describe command("#$node show querystring -v 2>&1") do
 its(:stdout) { should be >= '0.2.0' }
end

describe command("#$node show rai -v 2>&1") do
 its(:stdout) { should be >= '0.1.12' }
end

describe command("#$node show range-parser -v 2>&1") do
 its(:stdout) { should be >= '0.0.4' }
end

describe command("#$node show random-bytes -v 2>&1") do
 its(:stdout) { should be >= '1.0.0' }
end

describe command("#$node show readable-stream -v 2>&1") do
 its(:stdout) { should be >= '2,2,7' }
end

describe command("#$node show require_optional -v 2>&1") do
 its(:stdout) { should be >= '1.0.1' }
end

describe command("#$node show safe-buffer -v 2>&1") do
 its(:stdout) { should be >= '5.1.2' }
end

describe command("#$node show safer-buffer -v 2>&1") do
 its(:stdout) { should be >= '2.1.2' } 
end

describe command("#$node show sax -v 2>&1") do
 its(:stdout) { should be >= '1.2.1' }
end

describe command("#$node show semver -v 2>&1") do
 its(:stdout) { should be >= '5.6.0' }
end

describe command("#$node show send -v 2>&1") do
 its(:stdout) { should be >= '0.1.0' }
end

describe command("#$node show service -v 2>&1") do
 its(:stdout) { should be >= '0.1.4' }
end

describe command("#$node show simplesmtp -v 2>&1") do
 its(:stdout) { should be >= '0.3.35' }
end

describe command("#$node show ssf -v 2>&1") do
 its(:stdout) { should be >= '0.8.2' }
end

describe command("#$node show streamsearch -v 2>&1") do
 its(:stdout) { should be >= '0.1.2' }
end

describe command("#$node show string_decoder -v 2>&1") do
 its(:stdout) { should be >= '1.0.3' }
end

describe command("#$node show type-is -v 2>&1") do
 its(:stdout) { should be >= '1.6.16' }
end

describe command("#$node show typedarray -v 2>&1") do
 its(:stdout) { should be >= '0.0.6' }
end

describe command("#$node show uid-safe -v 2>&1") do
 its(:stdout) { should be >= '2.1.5' }
end

describe command("#$node show pooling -v 2>&1") do
 its(:stdout) { should be >= '0.4.6' }
end

describe command("#$node show url -v 2>&1") do
 its(:stdout) { should be >= '0.10.3' }
end

describe command("#$node show util-deprecate -v 2>&1") do
 its(:stdout) { should be >= '1.0.2' }
end

describe command("#$node show util-merge -v 2>&1") do
 its(:stdout) { should be >= '1.0.1' }
end

describe command("#$node show uuid -v 2>&1") do
 its(:stdout) { should be >= '3.1.0' }
end

describe command("#$node show vasync -v 2>&1") do
 its(:stdout) { should be >= '1.4.0' }
end

describe command("#$node show verror -v 2>&1") do
 its(:stdout) { should be >= '1.1.0' }
end

describe command("#$node show voc -v 2>&1") do
 its(:stdout) { should be >= '1.1.0' }
end

describe command("#$node show xlsjs -v 2>&1") do
 its(:stdout) { should be >= '0.7.6' }
end

describe command("#$node show xlsx -v 2>&1") do
 its(:stdout) { should be >= '0.10.9' }
end

describe command("#$node show xml2js -v 2>&1") do
 its(:stdout) { should be >= '0.4.19' }
end

describe command("#$node show xmlbuilder -v 2>&1") do
 its(:stdout) { should be >= '9.0.7' }
end

describe command("#$node show xoauth2 -v 2>&1") do
 its(:stdout) { should be >= '0.1.8' }
end

describe command("#$node show xtend -v 2>&1") do
 its(:stdout) { should be >= '4.0.1' }
end

describe command("#$node show underscore -v 2>&1") do
 its(:stdout) { should be >= '1.8.3' }
end
