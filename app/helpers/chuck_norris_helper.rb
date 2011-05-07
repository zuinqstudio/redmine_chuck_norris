
module ChuckNorrisHelper
  
  def ChuckNorrisHelper::load_random_fact(current_language)
    lang = current_language.to_s.downcase;
    if lang == "es"
      facts = ChuckNorrisFact.find(:all, :conditions => {:lang => lang})
    else
      facts = ChuckNorrisFact.find(:all, :conditions => {:lang => "en"})
    end
    numberOfFacts = facts.length  
    return facts.at(rand(numberOfFacts))
  end
  
end