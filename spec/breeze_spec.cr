require "./spec_helper"

describe Breeze do

    it "Test: get_mode" do
        get_mode("wlan0").should eq(2)
    end

    it "Test: get_mode w_socket" do
        sock = socket(AF_INET, SOCK_STREAM, 0)

        get_mode("wlan0", sock).should eq(2)
    end

end
