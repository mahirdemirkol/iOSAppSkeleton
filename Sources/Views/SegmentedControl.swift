//
//  SegmentedControl.swift
//  iOSAppSkeleton
//
//  Created by Omar Albeik on 5.02.2018.
//

import UIKit
import SnapKit

/// Custom UISegmentedControl.
open class SegmentedControl: UISegmentedControl, Animatable, Borderable {

	/// Create segmented control and set its segment titles in one line.
	///
	/// - Parameters:
	///   - frame: segmented control frame (default is .zero).
	///   - segmentTitles: segmented control segment titles.
	public convenience init(frame: CGRect = .zero, segmentTitles: [String]) {
		self.init(frame: frame)

		self.segmentTitles = segmentTitles
	}

	/// Create segmented control and set its segment images in one line.
	///
	/// - Parameters:
	///   - frame: segmented control frame (default is .zero).
	///   - segmentImages: segmented control segment images.
	public convenience init(frame: CGRect = .zero, segmentImages: [UIImage]) {
		self.init(frame: frame)

		self.segmentImages = segmentImages
	}

	override public init(frame: CGRect) {
		super.init(frame: frame)
		
		setViews()
		layoutViews()
	}
	
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		setViews()
		layoutViews()
	}

	/// Use this method to set and add your custom views.
	open func setViews() {
		backgroundColor = .white
	}

	/// Use this method to layout your custom views using SnapKit.
	open func layoutViews() {}

	/// Preferred padding for autolayout (default is 20).
	open var preferredPadding: CGFloat {
		return 20.0
	}

	/// Preferred height for autolayout (default is 42 for small screens and 48 for other screen sizes).
	open var preferredHeight: CGFloat {
		return UIScreen.main.isSmall ? 42 : 48
	}

	/// Segments titles.
	open var segmentTitles: [String] {
		get {
			let range = 0..<numberOfSegments
			return range.flatMap { titleForSegment(at: $0) }
		}
		set {
			removeAllSegments()
			for (index, title) in newValue.enumerated() {
				insertSegment(withTitle: title, at: index, animated: false)
			}
		}
	}

	/// Segments images.
	open var segmentImages: [UIImage] {
		get {
			let range = 0..<numberOfSegments
			return range.flatMap { imageForSegment(at: $0) }
		}
		set {
			removeAllSegments()
			for (index, image) in newValue.enumerated() {
				insertSegment(with: image, at: index, animated: false)
			}
		}
	}

}
