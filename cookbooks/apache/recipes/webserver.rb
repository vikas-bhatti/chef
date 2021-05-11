package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1>New webserver for cookbook testing</h1>
  <h2>IPADDRESS: #{node['ipaddress'] } </h2>
  <h2>HOSTNAME: #{node['hostname'] } </h2>"
  
  

  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
service 'httpd' do
  action [ :enable, :start]
end
