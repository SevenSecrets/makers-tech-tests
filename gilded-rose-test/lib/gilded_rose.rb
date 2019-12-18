class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      item_check_and_increment(item)
    end
  end

  private

  def item_check_and_increment(item)
    if item.name != "Sulfuras, Hand of Ragnaros"                                #does nothing if legendary
      if item.name == "Aged Brie"                                               #does brie stuff if brie
        aged_brie_quality_update(item)
      elsif item.name == "Backstage passes to a TAFKAL80ETC concert"            #does backstage stuff
        backstage_passes_quality_update(item)
      else
        if item.quality > 0 &&
          item.quality -= 1                                                     #reduces quality
          if item.sell_in < 1 && item.quality > 0                               #reduces quality again
            item.quality -= 1                                                   #if past sell_in day
          end
        end
      end
    end
    item.sell_in -= 1
  end

  def aged_brie_quality_update(item)
    if item.quality < 50                                                        #quality can't be over 50
      item.quality += 1
    end
  end

  def backstage_passes_quality_update(item)
    if item.quality < 50 && item.sell_in > 0
      if item.sell_in > 5
        if item.sell_in > 10
          item.quality += 1
        else
          item.quality += 2
        end
      else
        item.quality += 3
      end
    elsif item.sell_in < 1
      item.quality = 0
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
