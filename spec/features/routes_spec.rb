require 'spec_helper'

describe "homepage" do
  it "has correct url" do
    visit '/'
    expect(current_path).to eq('/')
  end
end
