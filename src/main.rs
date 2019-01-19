mod job;

use self::job::Job;

fn main() {
    let j = Job::new();
    println!("{:?}", j);
}
