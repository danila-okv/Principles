import Foundation

struct Principle: Identifiable {
	let id: UUID
	let creationDate: Date
	let trackingPeriod: TrackingPeriod
	var type: PrincipleType
	var status: PrincipleStatus
	let title: String
	let description: String
	var penalties: [Penalty]
}
