require_relative '../lib/caesar_cipher'

RSpec.describe "caesar_cipher" do
  it "chiffre une seule lettre avec un décalage positif" do
    expect(caesar_cipher('A', 3)).to eq('D')
  end
#Ici On appelle la fonction caesar_cipher avec les arguments 'A' et 3.
#L'attente (expect) est que le résultat de cette opération soit égal à 'D'.
#le test vérifie si la lettre 'A' est correctement chiffrée 
#avec un décalage positif de 3, et si le résultat est 'D'

  it "chiffre un mot ou une phrase avec un décalage positif" do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    expect(caesar_cipher('anakin', 5)).to eq('fsfpns')
    expect(caesar_cipher('metal', 7)).to eq('tlahs')
  end
end
# la fonction caesar_cipher est cette fois définis avec les arguments 'What a string!' et 5.
#L'attente est que le résultat de cette opération soit égal à 'Bmfy f xywnsl!' on utilise donc la fonction .to eq
#Le test vérifie si la phrase 'What a string!' est correctement chiffré 
#avec un décalage positif de 5 le résultat est Bmfy f xywnsl!

