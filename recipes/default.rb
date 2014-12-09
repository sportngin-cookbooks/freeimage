node[:freeimage][:dependencies].each do |dep|
  package dep
end

package 'freeimage' do
  version "#{node[:freeimage][:version]}-#{node[:freeimage][:release]}"
end
