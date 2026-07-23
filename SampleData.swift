// File: ManualHoursEntry.swift
import Foundation

struct ManualHoursEntry: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let hours: Double
    let date: Date
    var verified: Bool
}

struct VerifiedEntry: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let hours: Double
    let date: Date
    let source: String // "Event" or "Manual"
}
