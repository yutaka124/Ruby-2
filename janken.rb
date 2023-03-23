def janken
  puts "じゃんけん・・・"
  puts "[0]グー [1]チョキ [2]パー [3]戦わない"

  player_hand = gets.to_i
  program_hand = rand(4)

  jankens = ["グー", "チョキ","パー", "戦わない"]
  
  puts "------------------------------"
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
  puts "------------------------------"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif(player_hand == 3 )||(program_hand == 3)
    puts "戦わないことを選びました、終了します"
    exit  
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    @win_or_lose = "win"
  else
    puts "あなたの負けです"
    @win_or_lose = "lose"
  end
  
  
  puts "あっちむいて〜"
  puts "[0]上 [1]下 [2]左 [3]右"
  
  player_direction = gets.to_i
  program_direction = rand(4)
  
  directions = ["上", "下", "左", "右"]
  
  puts "------------------------------"
  puts "あなた:#{directions[player_direction]}, 相手:#{directions[program_direction]}"
  puts "------------------------------"
  
  # 勝敗の判定を行う
  if @win_or_lose == "win" && player_direction == program_direction
    puts "あなたの勝利です！"
    return false
  elsif @win_or_lose == "lose" && player_direction == program_direction
    puts "あなたの敗北です..."
    return false
  else 
    return true
  end
end

# ゲームを繰り返すためのループ
next_game = true
loop do
  next_game = janken
  if next_game == false
    break
  end
end