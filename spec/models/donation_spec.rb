require 'spec_helper'

describe Donation do
  it { should belong_to :user }
  it { should belong_to :charity }
  it { should accept_nested_attributes_for(:user)}

end
