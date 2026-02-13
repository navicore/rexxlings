//! Exercise execution via the `rexx` interpreter
//!
//! Both compile and test modes simply run `rexx <path>` and check the exit code.
//! The rexx interpreter exits 0 on success and non-zero on parse/runtime errors
//! or when the script calls `EXIT n` where n != 0.

use std::path::Path;
use std::process::Command;

/// Run a REXX file and check that it exits cleanly (compile mode).
///
/// Returns Ok(()) if the script exits 0, Err with output otherwise.
pub fn compile(path: &Path) -> Result<(), String> {
    let output = Command::new("rexx")
        .arg(path)
        .output()
        .map_err(|e| format!("Failed to run rexx: {}. Is rexx installed and in PATH?", e))?;

    if output.status.success() {
        Ok(())
    } else {
        let stderr = String::from_utf8_lossy(&output.stderr);
        let stdout = String::from_utf8_lossy(&output.stdout);
        Err(format!("{}{}", stdout, stderr))
    }
}

/// Run a REXX file's embedded tests and return the output.
///
/// Test exercises contain their own assertion logic that calls `EXIT 1` on
/// failure. We just run the script and check the exit code.
pub fn run_tests(path: &Path) -> Result<String, String> {
    let output = Command::new("rexx")
        .arg(path)
        .output()
        .map_err(|e| format!("Failed to run rexx: {}. Is rexx installed and in PATH?", e))?;

    let stdout = String::from_utf8_lossy(&output.stdout).to_string();
    let stderr = String::from_utf8_lossy(&output.stderr).to_string();

    if output.status.success() {
        Ok(format!("{}{}", stdout, stderr))
    } else {
        Err(format!("{}{}", stdout, stderr))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs;
    use std::path::PathBuf;

    fn temp_rexx_file(content: &str) -> PathBuf {
        let dir = std::env::temp_dir();
        let path = dir.join("test_exercise.rexx");
        fs::write(&path, content).unwrap();
        path
    }

    #[test]
    #[ignore] // Requires rexx to be installed
    fn test_compile_valid() {
        let path = temp_rexx_file("SAY 'hello'");
        assert!(compile(&path).is_ok());
        fs::remove_file(&path).ok();
    }

    #[test]
    #[ignore] // Requires rexx to be installed
    fn test_compile_invalid() {
        let path = temp_rexx_file("SAY (((");
        assert!(compile(&path).is_err());
        fs::remove_file(&path).ok();
    }
}
