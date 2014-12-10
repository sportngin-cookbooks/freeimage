remote_file 'freeimage.zip' do
  path "#{Chef::Config[:file_cache_path]}/freeimage.zip"
  source node[:freeimage][:source][:url]
  not_if 'ldconfig -v 2>&1 | grep -q libfreeimage'
end

execute 'Compile, install and clean freeimage' do
  cwd Chef::Config[:file_cache_path]
  command <<-EOF
unzip freeimage.zip
cd FreeImage
make
make install
make clean
  EOF
  action :nothing
  subscribes :run, 'remote_file[freeimage.zip]', :immediately
end
