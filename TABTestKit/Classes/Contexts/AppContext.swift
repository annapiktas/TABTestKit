//
//  AppContext.swift
//  TABTestKit
//
//  Created by Kane Cheshire on 09/09/2019.
//

import Foundation

public protocol AppContext {}
public extension AppContext {
	
	func backgroundTheApp() {
		App.shared.background()
	}
	
	func foregroundTheApp() {
		App.shared.activate()
	}
	
	func terminateTheApp() {
		App.shared.terminate()
	}
	
	func launchTheApp(clean: Bool) {
		App.shared.launch(clean: clean)
	}
	
	func relaunchTheApp() {
		backgroundTheApp()
		terminateTheApp()
		launchTheApp(clean: false)
	}
	
	func openSafari() { // TODO: Move to Safari context
		Safari().activate()
	}
	
}
