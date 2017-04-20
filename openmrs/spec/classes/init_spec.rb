require 'spec_helper'
describe 'openmrs' do
  context 'with default values for all parameters' do
    it { should contain_class('openmrs') }
  end
end
