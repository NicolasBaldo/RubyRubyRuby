require_relative '../lib/word_counter' 


RSpec.describe "word_counter" do
  let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }
#utilisation de let pour définir la variable dictionary pour une suite de tests 

  it "renvoie le nombre d'occurrences de chaque mot du dictionnaire dans le corpus" do
    expect(word_counter("below", dictionary)).to eq({"below"=>1})
    #vise à tester le cas où le corpus est simplement le mot "below" => 1 sers a indiquer qu'il aparait au moins une fois dans le tableau.

  end

  it "renvoie le nombre d'occurrences de chaque mot du dictionnaire dans le corpus" do
    expect(word_counter("Howdy partner, sit down! How's it going?", dictionary)).to eq({"down"=>1, "going"=>1, "how"=>1, "howdy"=>1, "it"=>1, "partner"=>1, "sit"=>1})
  end
end
#ces tests vérifient que la fonction word_counter fonctionne correctement 
#en comptant le nombre d'occurrences de chaque mot du dictionnaire dans le corpus donné
