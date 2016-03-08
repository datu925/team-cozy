require 'rails_helper'

describe "homepage" do
  it "display layout header" do
    visit '/'
    expect(page).to have_text("CozyTime Reviews")
  end

  it "has correct url" do
    visit '/'
    expect(page).to have_text("#{}")
  end

end
