def day_trader(prices)
  #Création d'une fonction day_trader qui prend le tableau de prix (prices) en paramètre.
  best_days = { buy_day: 0, sell_day: 0 }
  #Création d'un hash avec les variables best day et sell day
  #Les variables sont initialisées a 0 pour stocker l'indice du meilleur jour d'achat
  max_profit = 0
  #Idem pour max profit

  prices.each_with_index do |buy_price, buy_day|
    #Création d'une boucle qui va passer en revue chaque élément du tableau prices en suivant l'indice (buy_day) et la valeur (buy_price) associée.

    (buy_day + 1...prices.length).each do |sell_day|
      #Création boucle qui itère sur les jours de vente potentiels, en commençant par le jour suivant au jour d'achat (buy_day + 1) jusqu'à la fin du tableau.
      sell_price = prices[sell_day]
      # Récupère le prix de vente pour le jour actuel.
      profit = sell_price - buy_price
      #Calcule le bénéfice potentiel en soustrayant le prix d'achat du prix de vente.
      if profit > max_profit
        best_days = { buy_day: buy_day, sell_day: sell_day }
        max_profit = profit
      end
    end
  end

  [best_days[:buy_day], best_days[:sell_day]]
  #extrait les valeurs du hash pour les jours d'achat et de revente et les retourne sous la forme d'un tableau.
end

