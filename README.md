# Sift

A native macOS app for sorting and picking photos and videos from a shoot. Two independent features:

- **Organizer**: scans a messy folder of camera-card dumps, groups files into events by capture time, and builds a move plan you review as a dry run before anything touches disk.
- **Selector**: browses a folder as a thumbnail grid, previews with Apple Preview-style zoom and pan, lets you pick or unpick, and exports the picks.

## Requirements

- macOS 27, Xcode 27, Swift 6.2+

## Build and test

```bash
make build   # build the app
make test    # run SiftKit unit tests
make run     # build and launch
```

Or open `Sift.xcworkspace` in Xcode and run the `Sift` scheme.

## Structure

| Path | Purpose |
|------|---------|
| `Sift/` | SwiftUI app shell. No business logic. |
| `SiftKit/` | Swift package with all business logic, split into modules. |
| `SiftKit/Tests/` | Per-module tests and `SiftTestHelpers`. |

SiftKit modules: `SiftCore` (models), `SiftScanning`, `SiftClustering`, `SiftPlanning`, `SiftSelection`, and `SiftKit` (umbrella that re-exports the rest).

## Safety

Organizing is dry-run first. Nothing is moved or renamed until a plan has been reviewed and approved, every apply writes a journal, and undo reverses it. Files are never deleted.

## Status

Early development, built in reviewable chunks. See `CLAUDE.md` for the working rules.
