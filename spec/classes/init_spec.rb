require 'spec_helper'
describe 'fonts' do

  context 'with defaults for all parameters' do
    it { should contain_class('fonts') }
  end
end
