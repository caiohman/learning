pub trait Logger {
    /// Log a message at the given verbosity level.
    fn log(&self, verbosity: u8, message: &str);
}

struct StderrLogger;

impl Logger for StderrLogger {
    fn log(&self, verbosity: u8, message: &str) {
        eprintln!("verbosity={verbosity}: {message}");
    }
}

struct Filter<F> where F: Fn(u8, &str) -> bool{
    inner: StderrLogger,
    func: F,
}

impl<F> Filter<F> where F: Fn(u8, &str) -> bool{
    fn new(err: StderrLogger, func: F) -> Self {
        Self {inner: err, func: func}
    }

    fn log(&self, verbosity: u8, message: &str) {
        if (self.func)(verbosity, message) {
            self.inner.log(verbosity, message);
        }
    }
}    


fn main() {
    let logger = Filter::new(StderrLogger, |_verbosity, msg| msg.contains("yikes"));
    logger.log(5, "FYI");
    logger.log(1, "yikes, something went wrong");
    logger.log(2, "uhoh");
}
