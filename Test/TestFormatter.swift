//
//  TestFormatter.swift
//  TTTT
//
//  Created by Alex Severyanov on 04/04/2018.
//  Copyright © 2018 tttt. All rights reserved.
//

import Cocoa

class TestFormatter: Formatter {
	override func string(for obj: Any?) -> String? {
		return obj as? String
	}

	// Comment this line and see if crash still happens
	override func editingString(for obj: Any) -> String? {
		return obj as? String
	}

	override func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
		obj?.pointee = string.replacingOccurrences(of: " ", with: "") as NSString
		return true
	}

	override func isPartialStringValid(_ partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString>, proposedSelectedRange proposedSelRangePtr: NSRangePointer?, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
		return true
	}
}
