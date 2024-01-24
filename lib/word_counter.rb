def word_counter(corpus, dictionary)
    result = Hash.new(0)
    # Création d'un Hash avec une valeur par défaut de zéro
    # Ce hash stockera le nombre d'occurrences de chaque mot du dictionnaire dans le corpus
  
   
    words_in_corpus = corpus.downcase.scan(/\b[a-z]+\b/)
   # Utiliser une regex pour identifier les mots alphabétiques dans le corpus
  
    dictionary.each do |word|
          # Compte les occurrences de chaque mot dans le dictionnaire
      occurrences = words_in_corpus.count(word.downcase)
      #Compte le nombre d'occurrences de chaque mot du dictionnaire dans le corpus (en ignorant la casse).
      result[word] = occurrences if occurrences > 0
      #Ajoute le mot et le nombre d'occurrences au hash result uniquement si le nombre d'occurrences est supérieur à 0.
    end
  
    result
  end
  