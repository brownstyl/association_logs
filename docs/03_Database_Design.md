# Database Design

> No SQL implementation goes into this document until the design is approved.

---

# Database Principles

Every table should follow:

- One purpose
- One primary key
- Atomic values
- Clear relationships

---

# Planned Core Entities

These are not tables yet.

They are concepts.

- Users
- Associations
- Memberships
- Meetings
- Attendance
- Meeting Minutes

---

# Relationship Thinking

Current architecture:

User
↓
Membership
↓
Association

Future additions:

- Contributions
- Payments
- Requests
- Notifications

---

# Design Rules

Before creating any table, answer:

- Who owns this data?
- Can one record have many related records?
- What happens if it's deleted?
- Should another table reference it?