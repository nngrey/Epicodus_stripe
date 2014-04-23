require 'spec_helper'

describe Donation do
  it { should belong_to :user }
  it { should belong_to :charity }

end
