require 'spec_helper'
describe 'ci_eye' do

  context 'with defaults for all parameters' do
    it { should contain_class('ci_eye') }
  end
end
