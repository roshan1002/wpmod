require 'spec_helper'
describe 'wordpress' do
  context 'with default values for all parameters' do
    it { should contain_class('wordpress') }
  end
end
