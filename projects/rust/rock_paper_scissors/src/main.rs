use rand::Rng;
use std::io;
use std::io::Write;

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

        guess
    };

    let bot_select = rand::thread_rng().gen_range(1..=3);

    println!("You selected {player_select}");
    println!("Bot selected {bot_select}");

    println!(
        "{}",
        match (player_select, bot_select) {
            (a, b) if a == b => "Tie!",
            (1, 2) => "Bot Wins!", // rock, paper
            (1, 3) => "You Win!",  // rock, scissors
            (2, 1) => "You Win!",  // paper, rock
            (2, 3) => "Bot Wins!", // paper, scissors
            (3, 1) => "Bot Wins!", // scissors, rock
            (3, 2) => "You Win!",  // scissors, paper
            (_, _) => "error, unknown symbol",
        },
    );
}
