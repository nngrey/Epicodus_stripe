require 'spec_helper'

describe User do
  it { should have_many :donations }
  it { should have_many(:charities).through(:donations) }
end
