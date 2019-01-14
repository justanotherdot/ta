extern chrono;

use chrono::prelude::*;

mod job {
    struct Job<T> {
        activity: Fn<T>,
        deadline: DateTime,
    }
}
