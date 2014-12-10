`ldconfig -v 2>&1 | grep -q libfreeimage`
installed = $?.to_i == 0

unless installed
  remote_file '/tmp/freeimage.zip' do
    source node[:freeimage][:source][:url]
  end

  execute 'Compile, install and clean freeimage' do
    cwd '/tmp'
    command <<-EOF
  unzip freeimage.zip
  cd FreeImage
  make
  make install
  make clean
    EOF
  end
end
