//
//  ImageView.swift
//  iOSAppSkeleton
//
//  Created by Omar Albeik on 6.02.2018.
//  Copyright © 2018 Mobilion. All rights reserved.
//

import UIKit
import SnapKit

/// Custom UIImageView.
open class ImageView: UIImageView, Animatable, Borderable {

	public override init(image: UIImage?) {
		super.init(image: image)

		setViews()
		layoutViews()
	}

	public override init(image: UIImage?, highlightedImage: UIImage?) {
		super.init(image: image, highlightedImage: highlightedImage)

		setViews()
		layoutViews()
	}

	public override init(frame: CGRect) {
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

	/// Call this method from view contoller to handle KeyboardWillShow notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardWillShow(_ sender: Notification) {}

	/// Call this method from view contoller to handle handleKeyboardDidShow notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardDidShow(_ sender: Notification) {}

	/// Call this method from view contoller to handle handleKeyboardWillHide notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardWillHide(_ sender: Notification) {}

	/// Call this method from view contoller to handle handleKeyboardDidHide notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardDidHide(_ sender: Notification) {}

	/// Call this method from view contoller to handle handleKeyboardWillChangeFrame notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardWillChangeFrame(_ sender: Notification) {}

	/// Call this method from view contoller to handle handleKeyboardDidChangeFrame notification.
	///
	/// - Parameter sender: keyboard notificaton sent from system.
	open func handleKeyboardDidChangeFrame(_ sender: Notification) {}

}
