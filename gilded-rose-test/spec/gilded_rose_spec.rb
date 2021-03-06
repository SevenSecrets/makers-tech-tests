require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "reduces sell_in by one each day" do
      items= [Item.new("foo", 1, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].sell_in).to eq 0
    end

    it "reduces the quality after a day" do
      items = [Item.new("foo", 0, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 0
    end

    it "reduces quality twice as fast after sell_in date" do
      items = [Item.new("foo", 0, 10)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 8
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
  end

  describe "#aged_brie_update" do
    it "increases the quality of Aged Brie" do
      items = [Item.new("Aged Brie", 1, 1)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 2
    end

    it "doesn't increase quality past 50" do
      items = [Item.new("Aged Brie", 1, 50)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 50
    end
  end

  describe "#backstage_passes_update" do
    it "increases backstage pass quality by 1 when over 10 days left" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 12, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 1
    end

    it "increases backstage pass quality by 2 when under 10 days left" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 8, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 2
    end

    it "increases backstage pass quality by 3 when under 5 days left" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 4, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 3
    end

    it "reduces backstage pass value to 0 after concert" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 0
    end
  end

end
