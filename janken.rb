# class du joueur
class Player


  def hand
    jank = ["Pierre", "Papier", "Ciseaux"]
    decision = true
    while decision do
    puts "Veuillez saisir un nombre."
    puts "0: Pierre, 1: Papier , 2: Ciseaux"
    input_hand = gets.to_i

      if  (input_hand == 0 || input_hand == 1 || input_hand == 2)
        decision = false
      else
        puts "Veuillez saisir un chiffre entre 0 et 2."
        decision = true
      end
    end

    puts "Vous avez choisi #{jank[input_hand]}"

    return input_hand

  end

end


# class enemy
class Enemy

  def hand
    num = rand(0..2)
    return num
  end

end



class Janken

  def pon(player_hand, enemy_hand)

    janken = ["Pierre", "Papier", "Ciseaux"]

    puts "J'ai choisi #{janken[enemy_hand]}"

    var_player = player_hand
    var_enemy = enemy_hand



    juge = (var_player - var_enemy + 3) % 3

    if juge == 2
      puts "Vous avez perdu !!"
    elsif juge == 1
      puts "Vous avez gagné !!"
    else
      puts "Egalité."
    end

  end

end
# Écrivez la logique pour exécuter le jeu roche-papier-ciseaux.
class GameStart
  # selfを使用することで、GameStartをインスタンス化することなく、クラス名を使ってjankenponメソッドを呼び出せます。
  def self.jankenpon

    player = Player.new

    enemy = Enemy.new

    janken = Janken.new

    while true
      next_game = janken.pon(player.hand, enemy.hand)
    end

  end

end
# Appelez la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon
