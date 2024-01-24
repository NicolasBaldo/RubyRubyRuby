def caesar_cipher(text, shift)
    result = ""
  #Initialise une variable result comme une chaîne vide "" .
  #Cette variable sera utilisée pour stocker le résultat du chiffrement.
  text.each_char do |char|
  #Commence une boucle qui itère sur chaque caractère de la chaîne text.
    result << caesar_cipher_letter(char, shift)
  #Pour chaque caractère char, appelle la fonction caesar_cipher_letter avec les paramètres char (le caractère actuel) et shift (le décalage).
    end

    result
    #résultat de la fonction à la chaîne 
  end
  
  def caesar_cipher_letter(letter, shift)
    return letter unless letter.match?(/[a-zA-Z]/)
    #Si le caractère letter n'est pas une lettre de l'alphabet (majuscule ou minuscule)
    # la fonction retourne simplement le caractère non modifié.
    #la regex définis pour la base si le caractère letter est une lettre minuscule ou majuscule
    
  
    base = letter =~ /[a-z]/ ? 'a'.ord : 'A'.ord
    #Si letter est une lettre minuscule, alors base est défini comme l'ordinal (valeur ASCII) de la lettre 'a'
    #sinon, si c'est une lettre majuscule, base est défini comme l'ordinal de la lettre 'A'.
    ((letter.ord - base + shift) % 26 + base).chr
    #letter.ord renvoie l'ordinal (valeur ASCII) de la lettre letter
    #letter.ord - base + shift ajuste l'ordinal en fonction de la base et du décalage (shift) spécifié.
    #((letter.ord - base + shift) % 26 + base) assure que le résultat reste dans la plage des lettres de l'alphabet (26 lettres) en utilisant l'opération modulo (%).
   #.chr convertit l'ordinal résultant en caractère.
   #.ord est utilisée sur une chaîne de caractères pour obtenir l'ordinal (valeur ASCII) du premier caractère de la chaîne
  end
  

  