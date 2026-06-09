fn sharedro() {
    let a: char = 'A';
    let r: &char = &a;
    dbg!(r);
    println!("{r:p}"); //get address
}    

fn sharedr() {
    let mut a : char = 'A';
    let r : &mut char = &mut a;
    *r = 'B';
    dbg!(a);
}

fn exclur() {
    let mut point : (i8, i8) = (1, 2);
    let x : &mut i8 = &mut point.0;
    *x = 20;
    dbg!(x);
}

fn slicesp() {
    let a: [i8; 6] = [1, 2, 3, 4, 5, 6];
    let s: &[i8] = &a[2..4];
    println!("{s:?}");
}


fn magnitude(g: &[f32;3]) -> f64{ 
    let mut sum: f32 = 0.0;
    for i in 0..=2 {
        sum += &g[i] * &g[i];
    }
    sum.sqrt().into()
}

fn normalize(g: &mut [f32;3]) -> &mut [f32;3]{
    let m : f64 = magnitude(g);
    for i in 0..=2 {
        g[i] = g[i] / m as f32; 
    }
    g
}    

fn geometry() {
    println!("Magnitude of a unit vector: {}", magnitude(&[0.0, 1.0, 0.0]));
    let mut v = [1.0, 2.0, 9.0];
    println!("Magnitude of {v:?}: {}", magnitude(&v));
    normalize(&mut v);
    println!("Magnitude of {v:?} after normalization: {}", magnitude(&v));
}

fn main() {
    sharedro();
    sharedr();
    exclur();
    slicesp(); 
    geometry();
}

