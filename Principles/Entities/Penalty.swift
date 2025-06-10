import Foundation

struct Penalty: Identifiable {
    let id: UUID
    /// Short description of the penalty.
    let title: String
    /// Date when the penalty occurred.
    let date: Date
    /// Name of the principle which this penalty relates to.
    let principleTitle: String
}
