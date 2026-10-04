# Sift: Claude Rules

| What | Value |
|------|-------|
| Build | `make build` |
| Unit tests | `make test` (SiftKit package) |
| Platform | macOS 27, SwiftUI. iPadOS comes later via shared SiftKit. |

## Rules

- Business logic goes in `SiftKit`; the `Sift` app target is UI only.
- Never write to, move, rename or delete user media outside the Organizer's apply step. Scanning, clustering, planning and selection are read-only.
- Apply must be preceded by an approved plan file and write an undo journal.
- Develop and test against a small copy of data, not the original drive.
- Do not widen access control without a caller that needs it.
- Comments only for non-obvious why.
- Work in small buildable chunks; stop after each for review. No pushes or PRs unless asked.
