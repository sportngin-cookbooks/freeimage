require 'spec_helper'

describe package('freeimage') do
  it { should be_installed }
end

#TODO verify version