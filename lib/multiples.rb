def is_multiple_of_3_or_5?(number)
    #Vérifie si le nombre est un multiple de 3 ou 5
    return (number % 3 == 0) || (number % 5 == 0)
  end
  #Ici La fonction vérifie ci dessus si number est un multiple de 3 ou de 5 en utilisant l'opérateur modulo (%). 
  #Si number % 3 ou number % 5 est égal à zéro, cela signifie que number est divisible par 3 ou par 5
  #et la fonction retourne true. Sinon, elle retourne false.
  
  def sum_of_3_or_5_multiples(final_number)
    final_sum = 0
  #Ici la fonction (final_number) est conçue pour calculer la somme des multiples de 3 ou de 5 jusqu'au nombre spécifié .
  #final_sum sers a accumuler la somme des multiples de 3 ou de 5.
  # Elle est mise à zéro au début de la fonction, avant de commencer à ajouter les multiples.
  
    (0...final_number).each do |current_number|
      #La première ligne utilise la notation 0...final_number pour créer une plage d'entiers de 0 jusqu'à final_number
  #La méthode .each est ensuite utilisée pour itérer sur chaque nombre la variable current_number.
       if is_multiple_of_3_or_5?(current_number)
        final_sum += current_number
      end
    end
   #Ici a chaque itération de la boucle, cette condition vérifie si le current_number est un multiple de 3 ou de 5
   #
    return final_sum
  end
  # Cela donne la somme totale des multiples de 3 ou de 5 jusqu'à final_number - 1.
 
  #  la fonction return retourne la valeur de final_sum. Cela donne la somme totale des multiples de 3 ou de 5 jusqu'à final_number - 1.
  #Car on soustrait 1 de final_number pour définir la fin de la plage.
  #(0...final_number) inclura 0 mais exclura final_number. 
  #le -1 est utilisé pour définir la plage de manière à inclure tous les nombres de 0 jusqu'à final_number - 1.
  puts sum_of_3_or_5_multiples(11) #=> 33
  puts sum_of_3_or_5_multiples(10) #=> 23

