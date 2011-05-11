# Encoding: UTF-8
# Written by: Alexander Meindl

class GermanTranslationChuckNorrisFacts < ActiveRecord::Migration
  def self.up

    factsEs = IO.readlines(File.dirname(__FILE__) + "/facts_de.txt");
    factsEs.collect {|fact|
      ChuckNorrisFact.create(:description => fact, :lang => "de")
    }

  end
end
