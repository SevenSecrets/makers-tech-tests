require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "reduces the quality after a day" do
      items = [Item.new("foo", 0, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 0
    end

    it "doesn't reduce quality below 0" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 0
    end

    it "doesn't affect Sulfuras" do
      items = [Item.new("Sulfuras, Hand of Ragnaros", 1, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 1
    end

    it "increases the quality of Aged Brie" do
      items = [Item.new("Aged Brie", 1, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to be 2
    end

    it "doesn't increase quality past 50" do
      items = [Item.new("Aged Brie", 1, 50)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 50
    end

    it "reduces backstage pass value to 0 after concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 0
    end
  end

end
