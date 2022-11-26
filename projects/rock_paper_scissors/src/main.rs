use rand::Rng;
use std::io;
use std::io::Write;

fn to_symbol(x: i32) -> &'static str {
    match x {
        1 => "rock",
        2 => "paper",
        3 => "scissors",
        _ => "Unknown symbol",
    }
}

fn main() {
    println!("Rock Paper Scissors");

    let player_select = {
        print!("What is your selection (1=rock, 2=paper, 3=scissors): ");
        io::stdout().flush().expect("Flush Failed");

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: i32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => panic!("Unknown symbol"),
        };

        to_symbol(guess)
    };

    let bot_select = to_symbol(rand::thread_rng().gen_range(1..=3));

    println!("You selected {player_select}");
    println!("Bot selected {bot_select}");

    let ret = match (player_select, bot_select) {
        (a, b) if a == b => "Tie!",
        ("rock", "paper") => "Bot Wins!",
        ("rock", "scissors") => "You Win!",
        ("paper", "rock") => "You Win!",
        ("paper", "scissors") => "Bot Wins!",
        ("scissors", "rock") => "Bot Wins!",
        ("scissors", "paper") => "You Win!",
        (_, _) => "error, unknown symbol",
    };

    println!("{ret}")
}
