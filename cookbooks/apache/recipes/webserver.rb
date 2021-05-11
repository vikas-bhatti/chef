package 'httpd' do
  action :install
end
service 'httpd' do
  action :start
end
file '/var/www/html/index.html' do
  content 'New webserver for cookbook testing'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
service 'httpd' do
  action [ :enable, :start]
end
