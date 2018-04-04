# swift4.1_crash_macosx
Test project with crash which happens on swift 4.1 only

## Problem
After updating to Xcode 9.3 (Swift 4.1) subclasses of `Formatter` lead to a crash if you override  `editingString` method.

Run the project and you will get a crash. If you comment `override func editingString(for obj: Any) -> String? {` method in `TestFormatter`, the project will work well again.
