# class du joueur
class Player


  def hand
    jank = ["Goo", "Choki", "Par"]
    decision = true
    while decision do
    puts "Veuillez saisir un nombre."
    puts "0: Goo\n1: Choki\n2: Par\n"
    input_hand = gets.chomp.to_s


      if  (input_hand == "0" || input_hand == "1" || input_hand == "2")
        decision = false
      else
        puts "Veuillez saisir un chiffre entre 0 et 2."
        decision = true
      end
    end

    input_hand2 = input_hand.to_i

    puts "Vous avez choisi #{jank[input_hand2]}"

    return input_hand2

  end

end


# class enemy
class Enemy

  def hand
    num = rand(0..2)
    puts "La main de l'adversaire a choisi: #{num}"
    return num
  end

end



class Janken

  def pon(player_hand, enemy_hand)

    janken = ["Goo", "Choki", "Par"]

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


      next_game = janken.pon(player.hand, enemy.hand)


  end

end
# Appelez la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon
