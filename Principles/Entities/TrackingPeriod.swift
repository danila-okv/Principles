import Foundation

struct TrackingPeriod: Identifiable {
	let id: UUID
	let startDate: Date
	let expectedEndDate: Date
	let actualEndDate: Date?
}
