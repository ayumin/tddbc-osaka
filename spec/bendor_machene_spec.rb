# coding: utf-8
require './bendor_machene'
require './money'

describe BendorMachene do

  it "自動販売機には、10円玉を投入できる" do
    bendor_machene = BendorMachene.new
    bendor_machene.throw(Money::JUUEN)
  end
  it "自動販売機には、50円玉を投入できる" do
    bendor_machene = BendorMachene.new
    bendor_machene.throw(Money::GOJUUEN)
  end
  it "自動販売機には、100円玉を投入できる" do
    bendor_machene = BendorMachene.new
    bendor_machene.throw(Money::HYAKUEN)
  end
  it "自動販売機には、500円玉を投入できる" do
    bendor_machene = BendorMachene.new
    bendor_machene.throw(Money::GOHYAKUEN)
  end
  it "自動販売機には、1000円札を投入できる" do
    bendor_machene = BendorMachene.new
    bendor_machene.throw(Money::SENEN)
  end
end

