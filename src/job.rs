extern crate chrono;

use chrono::prelude::*;

#[derive(Debug)]
struct Activity {
    command: String,
    args: Vec<String>,
}

#[derive(Debug)]
pub struct Job {
    activity: Option<Activity>,
    deadline: Option<DateTime<Utc>>,
}

impl<'a> Job {
    pub fn new() -> &'a Self {
        &Job {
            activity: None,
            deadline: None,
        }
    }
}
