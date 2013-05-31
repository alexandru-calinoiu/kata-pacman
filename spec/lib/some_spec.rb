require 'spec_helper'
require 'some'

describe Some do
  subject { Some.new }

  it { should be_kind_of(Some) }
end