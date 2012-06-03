# coding: utf-8
require './vendor_machene'
require './money'

describe VendorMachene do

  it "自動販売機には、10円玉を投入できる" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::JUUEN).should == "success"
  end
  it "自動販売機には、50円玉を投入できる" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::GOJUUEN).should == "success"
  end
  it "自動販売機には、100円玉を投入できる" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::HYAKUEN).should == "success"
  end
  it "自動販売機には、500円玉を投入できる" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::GOHYAKUEN).should == "success"
  end
  it "自動販売機には、1000円札を投入できる" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::SENEN).should == "success"
  end
  it "自動販売機には、5000円札は投入できない" do
    vendor_machene = VendorMachene.new
    vendor_machene.throw(Money::GOSENEN).should == "failure"
  end
end

