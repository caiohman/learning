fn block() {
    let z : i8 = 13;
    let x = {
        let y = 10;
        z - y
    };
    println!("{x}");
}

fn ifstat() {
     let x = 10;
     let size = if x < 20 { "small" } else { "large" };
     println!("number size: {}", size);
}

fn matchv() {
    let val : i8 = 1;
        match val {
            1 => println!("one"),
            10 => println!("ten"),
            100 => println!("one hundred"),
            _ => {
                println!("something else");
            }
        }
    let mut val : bool = false;
    match val {
        true => val = !val,
        false => val = !val,
    }
    println!("{val}");
}

fn forl() {

    for x in 1..5 {
        dbg!(x);
    }

    for elem in [2, 4, 8, 16, 32] {
        dbg!(elem);
    }
}

fn loopr() {
    let mut i = 0;
        loop {
            i += 1;
            if i > 3 {
                break;
            }
            if i % 2 == 0 {
                continue;
            }
            dbg!(i);
        }
}

fn labels() {
    let s = [[5, 6, 7], [8, 9, 10], [21, 15, 32]];
    let mut elements_searched = 0;
    let target_value = 10;
    'outer: for i in 0..=2 {
        for j in 0..=2 {
            elements_searched += 1;
            if s[i][j] == target_value {
                break 'outer;
            }
        }
    }
    dbg!(elements_searched);
}

fn collatz() {
    let mut n : i32 = 11;
    let mut count : i32 = 1;
    while n != 1 {
        count += 1;
        let v: bool = n % 2 == 0;
        match v {
            true => n /= 2,
            false => n = 3 * n + 1
        }
    }
    println!("res: {count}");
}

fn main() {
    block();
    ifstat();
    matchv();
    forl();
    loopr();
    labels();
    collatz();
}
