require 'spec_helper'

describe "Application" do
  it "should return OK when fetching the index" do
    get '/'

    last_response.should be_ok
  end
end
