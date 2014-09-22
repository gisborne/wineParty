class AddVarietals < ActiveRecord::Migration
  class Varietal < ActiveRecord::Base
    attr_accessible :varietal
  end

  def up
    varietals = "Merlot
Sauvignon Blanc
Zinfandel
Pinot Noir
Cabernet Sauvignon
Tempranillo
Syrah
Pinot Noir
Chardonnay
Malbec
Gewurztraminer
Muscat
Reisling
Semillon
Viognier
Grenache
Sangiovese
Pinot Gris
Muscat Blanc".split("\n")

    varietals.each do |v|
      Varietal.create varietal: v
    end

  end

  def down
    Varietal.all.each{|v| v.destroy}
  end
end
