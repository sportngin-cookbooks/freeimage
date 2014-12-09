require 'spec_helper'

describe command('test -f /usr/lib/libfreeimage-3.15.3.so') do
  its(:exit_status) { should eq 0 }
end

describe command('file -L /usr/lib/libfreeimage.so') do
  its(:stdout) { should include 'ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked' }
end
