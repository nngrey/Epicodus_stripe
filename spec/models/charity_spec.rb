require 'spec_helper'

describe Charity do
  it { should have_many :donations }
  it { should have_many(:users).through(:donations) }
end
