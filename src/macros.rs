#[macro_export]
macro_rules! println_with_prefix {
    ($($arg:tt)+) => {
        eprint!("\u{001b}[1m[systemd-boot-friend]\u{001b}[0m ");
        eprintln!($($arg)+);
    };
}

#[macro_export]
macro_rules! yield_into {
    (($x:ident) = $v:expr, $e:expr, $f:ident) => {
        $x = $v.next().ok_or_else(|| anyhow!("{}: {}", $e, $f))?;
    };
    (($x:ident, $($y:ident),+) = $v:expr, $e:expr, $f:ident) => {
        $x = $v.next().ok_or_else(|| anyhow!("{}: {}", $e, $f))?;
        yield_into!(($($y),+) = $v, $e, $f);
    }
}

#[macro_export]
macro_rules! unwrap_or_show_error {
    ($f:block, $e:expr) => {
        let tmp = { $f };
        if let Err(_) = tmp {
            return Err(anyhow!("{}", $e));
        }
        tmp.unwrap()
    }
}