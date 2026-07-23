// File: SampleData.swift
import SwiftUI

import SwiftUI

let opportunityData: [[String: Any]] = [
    [
        "title": "Beach Cleanup",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 15, hour: 9, minute: 0),
        "topic": "Environmental",
        "description": "Join us for a morning of beach cleanup to protect marine life.",
        "hours": 3.0,
        "tags": [
            Tag(name: "Outdoor", color: .blue),
            Tag(name: "Community", color: .green)
        ],
        "organization": "Ocean Guardians",
        "location": "Santa Monica Beach, CA"
    ],
    [
        "title": "Soup Kitchen Service",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 20, hour: 12, minute: 30),
        "topic": "Hunger Relief",
        "description": "Help serve meals to those in need at the local soup kitchen.",
        "hours": 4.0,
        "tags": [
            Tag(name: "Food", color: .orange),
            Tag(name: "Service", color: .red)
        ],
        "organization": "Hope for All",
        "location": "123 Main St, Austin, TX"
    ],
    [
        "title": "Park Tree Planting",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 18, hour: 8, minute: 0),
        "topic": "Environmental",
        "description": "Plant new trees at the city park to improve air quality.",
        "hours": 5.0,
        "tags": [
            Tag(name: "Nature", color: .green),
            Tag(name: "Team", color: .purple)
        ],
        "organization": "Green City Initiative",
        "location": "Zilker Park, Austin, TX"
    ],
    [
        "title": "Animal Shelter Care",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 22, hour: 10, minute: 0),
        "topic": "Animal Welfare",
        "description": "Assist with feeding and caring for shelter animals.",
        "hours": 3.5,
        "tags": [
            Tag(name: "Animals", color: .pink),
            Tag(name: "Compassion", color: .yellow)
        ],
        "organization": "Paws & Claws Shelter",
        "location": "456 Elm St, Austin, TX"
    ],
    [
        "title": "Literacy Tutoring",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 25, hour: 14, minute: 0),
        "topic": "Education",
        "description": "Tutor elementary students in reading and writing skills.",
        "hours": 2.0,
        "tags": [
            Tag(name: "Education", color: .blue),
            Tag(name: "Teaching", color: .red)
        ],
        "organization": "Read to Succeed",
        "location": "789 Oak Ave, Austin, TX"
    ],
    [
        "title": "Park Restoration",
        "dateComponents": DateComponents(year: 2025, month: 7, day: 2, hour: 9, minute: 30),
        "topic": "Community Service",
        "description": "Help restore walking trails and clean up the local park.",
        "hours": 4.0,
        "tags": [
            Tag(name: "Outdoor", color: .green),
            Tag(name: "Maintenance", color: .gray)
        ],
        "organization": "City Parks Department",
        "location": "McKinney Falls State Park, TX"
    ],
    [
        "title": "Senior Home Visit",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 30, hour: 15, minute: 0),
        "topic": "Elderly Care",
        "description": "Spend time with seniors at the local retirement home.",
        "hours": 2.5,
        "tags": [
            Tag(name: "Community", color: .purple),
            Tag(name: "Care", color: .blue)
        ],
        "organization": "Silver Linings",
        "location": "101 Maple Dr, Austin, TX"
    ],
    [
        "title": "Food Drive Collection",
        "dateComponents": DateComponents(year: 2025, month: 7, day: 5, hour: 11, minute: 0),
        "topic": "Hunger Relief",
        "description": "Collect and organize food donations for the local food bank.",
        "hours": 3.0,
        "tags": [
            Tag(name: "Food", color: .orange),
            Tag(name: "Logistics", color: .yellow)
        ],
        "organization": "Feeding Families",
        "location": "234 Pine St, Austin, TX"
    ],
    [
        "title": "Community Garden Work",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 28, hour: 8, minute: 0),
        "topic": "Gardening",
        "description": "Plant and maintain vegetables in the community garden.",
        "hours": 4.5,
        "tags": [
            Tag(name: "Gardening", color: .green),
            Tag(name: "Sustainability", color: .brown)
        ],
        "organization": "Urban Green Spaces",
        "location": "321 Cedar Ln, Austin, TX"
    ],
    [
        "title": "Tech Workshop Assistant",
        "dateComponents": DateComponents(year: 2025, month: 6, day: 26, hour: 13, minute: 0),
        "topic": "STEM Education",
        "description": "Assist in teaching basic coding skills to middle school students.",
        "hours": 3.0,
        "tags": [
            Tag(name: "STEM", color: .blue),
            Tag(name: "Tech", color: .gray)
        ],
        "organization": "Code for Kids",
        "location": "567 Birch Rd, Austin, TX"
    ]
]

let sampleOpportunities: [VolunteerOpportunity] = opportunityData.compactMap { data in
    guard let title = data["title"] as? String,
          let dateComponents = data["dateComponents"] as? DateComponents,
          let topic = data["topic"] as? String,
          let description = data["description"] as? String,
          let hours = data["hours"] as? Double,
          let tags = data["tags"] as? [Tag],
          let organization = data["organization"] as? String,
          let location = data["location"] as? String,
          let date = Calendar.current.date(from: dateComponents) else {
        return nil
    }
    
    return VolunteerOpportunity(
        title: title,
        date: date,
        topic: topic,
        description: description,
        hours: hours,
        tags: tags,
        organization: organization,
        location: location
    )
}
