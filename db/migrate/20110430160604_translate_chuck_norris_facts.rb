# Encoding: UTF-8
# Written by: Signo-Net
# Email: clientes@signo-net.com 
# Web: http://www.signo-net.com 

# This work is licensed under a Creative Commons Attribution 3.0 License.
# [ http://creativecommons.org/licenses/by/3.0/ ]

# This means you may use it for any purpose, and make any changes you like.
# All we ask is that you include a link back to our page in your credits.

# Looking forward your comments and suggestions! clientes@signo-net.com

class TranslateChuckNorrisFacts < ActiveRecord::Migration
  def self.up
    
    add_column :chuck_norris_facts, :lang, :string, :default => "en"
    ChuckNorrisFact.reset_column_information
    ChuckNorrisFact.update_all(:lang => "en")
    
    factsEs = IO.readlines(File.dirname(__FILE__) + "/facts_es.txt");
    factsEs.collect {|fact| 
      ChuckNorrisFact.create(:description => fact, :lang => "es")
    }    
    
  end

  def self.down
    remove_column :chuck_norris_facts, :lang
  end
end
