# encoding: UTF-8

require 'spec_helper'

describe RussianInflect do
  it "должен правильно склонять словосочение «Хорошая погода»" do
    source = RussianInflect.new("Хорошая погода")
    source.test_each_case "Хорошая погода", "Хорошей погоды", "Хорошей погоде", "Хорошую погоду", "Хорошей погодой", "Хорошей погоде"
  end
  
  it "должен правильно склонять словосочение «Большой куш»" do
    source = RussianInflect.new("Большой куш")
  	source.test_each_case "Большой куш", "Большого куша", "Большому кушу", "Большой куш", "Большим кушем", "Большом куше"
  end
  
  it "должен правильно склонять словосочение «Синее море»" do
    source = RussianInflect.new("Синее море")
  	source.test_each_case "Синее море", "Синего моря", "Синему морю", "Синее море", "Синим морем", "Синем море"
  end
  
  it "должен правильно склонять словосочение «Красное вино»" do
    source = RussianInflect.new("Красное вино")
  	source.test_each_case "Красное вино", "Красного вина", "Красному вину", "Красное вино", "Красным вином", "Красном вине"
  end
end