# System Requirements

> This document defines the behaviour of Version 1 before implementation.

---

# Primary Actor

For Version 1, every person begins as a User.

A User can later become:

- Admin (creator of an association)
- Member (joins another association)

---

# User Journey

1. Open the application.
2. Create a personal account.
3. Log into the personal dashboard.
4. Choose:
   - Create Association
   - Join Association
5. Enter an association workspace.

---

# Personal Dashboard

## Empty State

When a new user has no associations, the dashboard should display:

> Welcome! You're not part of any association yet.

Visible actions:

- Create Association
- Join Association

---

# Create Association

The creator automatically becomes Admin.

The system generates:

- Internal ID (hidden)
- Public Association ID

---

# Join Association

Requirements:

- User enters a valid Public Association ID.
- Invalid IDs cannot create memberships.
- Successful joins appear under My Associations.

---

# Association Workspace

Version 1 includes:

- Members
- Meetings
- Attendance
- Meeting Minutes
- Meeting History

---

# Meeting Minutes

Meeting Minutes are the official written record of what happened during a meeting.

They are different from Attendance.

| Item | Meaning |
|------|---------|
| Meeting | The event |
| Attendance | Who attended |
| Minutes | What happened |