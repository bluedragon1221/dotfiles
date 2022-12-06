use std::io;
use std::io::Write;
use std::cmp::Ordering;
use rand::Rng;

fn main() {
	println!("Guess the Number!");

	let secret_number = rand::thread_rng().gen_range(1..=1000);

	let mut count: i32 = 0;

	loop {
	    print!("guess: ");
    	io::stdout().flush().expect("Flush Failed");
	    let mut guess = String::new();

	    io::stdin()
	    .read_line(&mut guess)
	    .expect("Failed to read line");

	    let guess: u32 = match guess.trim().parse() {
	    	Ok(num) => num,
	    	Err(_) => continue,
	    };

	    match guess.cmp(&secret_number) {
	    	Ordering::Less => println!("Too small!"),
	    	Ordering::Greater => println!("Too big!"),
	    	Ordering::Equal => {
	    		count += 1;
	    		println!("You win!");
	    		println!("It took you {count} guesses");
	    		break;
	    	}
	    }
	count += 1;
    }
}
