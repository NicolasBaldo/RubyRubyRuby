require_relative '../lib/day_trader'

RSpec.describe "day_trader" do
  it "retourne les indices d'achat et de revente pour maximiser le bénéfice" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
   #L'attente (expect) est que le résultat de cette opération soit égal à 1 et 4.
  end
end
