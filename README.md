# Hourly

A platform for students to discover, join, and log volunteer hours — while giving organizations, nonprofits, and schools the tools to verify hours, manage groups, and handle paperwork in one place.

## Features

- **Discover opportunities** — Browse volunteer events with full details: organization, location, date, topic, tags, and hours.
- **Sign up in a tap** — Join an opportunity and add it straight to your Apple Calendar, or open its location in Apple Maps.
- **Set your availability** — Pick the days you're free and the opportunity list filters down to match.
- **Log hours** — Record hours automatically from events you signed up for, or add them manually.
- **Verify and track** — Verify your hours and watch your running total update in real time.

## Tech Stack

- Swift 5 / SwiftUI
- MapKit — location and maps
- EventKit — calendar integration
- Built with Xcode 16, targeting iOS 18.5+

## Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/<your-username>/Hourly.git

2. Open Hourly.xcodeproj in Xcode.
3. Select the Hourly scheme and run on a simulator or a connected device.

## Project Structure
Hourly/            App source (views, models, sample data)
HourlyTests/       Unit tests
HourlyUITests/     UI tests

## Note: the current build runs on bundled sample data, a working single-user prototype of the flow.

A couple of things to tweak after you paste it:
- Replace `<your-username>` in the clone URL with your GitHub handle.
- If your build isn't just a sample-data prototype anymore, drop that last note line.
