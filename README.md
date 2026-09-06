>A Nigeria Association Management System (NAMS)


# MeetingRecord

> **Working Title:** MeetingRecord – Association Management System (AMS)

> **Mission:** Replace the traditional paper meeting book used by Nigerian associations with a modern web-based system that is simple, scalable, and built from first principles as a full-stack engineering project.

---

# Project Philosophy

This project is **not just about building software**. It is a structured full-stack engineering journey where every concept learned is immediately applied to the project.

## Development Rules (Locked)

- I write **all SQL, Go, HTML, and CSS myself.**
- No unnecessary code should be provided to me.
- Every lesson must introduce a concept before implementation.
- Every implementation must be reviewed before moving forward.
- Features are added only after understanding the underlying engineering concepts.
- We build one production-ready version before expanding features.

> Learn → Build → Review → Improve → Deploy

---

# The Problem

Many Nigerian associations still rely on:

- Attendance books
- Contribution notebooks
- WhatsApp groups
- Excel sheets
- Manual signatures

These systems create problems:

- Records get lost.
- Contributions become difficult to track.
- Attendance history disappears.
- Meeting minutes are hard to retrieve.
- Financial transparency becomes difficult.

MeetingRecord aims to solve these problems.

---

# Does This Already Exist?

Yes.

Examples include:

- Wild Apricot
- MemberPlanet
- ChurchTrac
- Tithe.ly
- Paystack (payments only)

## The Opportunity

The opportunity is not creating a new category.

The opportunity is creating a system designed specifically for Nigerian associations, cooperatives, church groups, village unions, student bodies, and community organizations.

---

# Product Vision

MeetingRecord eventually becomes:

> WhatsApp + Ledger Book + Attendance Register + Contribution Record + Approval Workflow

But we will build it in stages.

---

# Product Roadmap

| Version | Goal |
|----------|------|
| V1 | Core Meeting Records |
| V2 | Contributions |
| V3 | Approval Requests |
| V4 | Mobile Version |
| V5 | SMS & Notifications |
| V6 | Analytics & Reports |

---

# Version 1 Scope (First Release)

The first release focuses on **Admin only**.

The goal is simple:

> Replace the physical meeting record book.

## Included Features

- [x] Create Association
- [x] Admin Login
- [x] Admin Dashboard
- [x] Add Members
- [x] Edit Members
- [x] Remove Members
- [x] View Members
- [x] Create Meeting
- [x] Record Attendance
- [x] Write Meeting Minutes
- [x] View Meeting History
- [x] Search Records

## Not Included Yet

- [ ] Treasurer
- [ ] Chairman
- [ ] Account Overseer
- [ ] Member Login
- [ ] Contributions
- [ ] Payments
- [ ] Requests
- [ ] Community Chat
- [ ] SMS Notifications
- [ ] Mobile App

> Scope is frozen until Version 1 is deployed.

---

# Future Feature Backlog

## User Roles

- Admin
- Chairman
- Treasurer
- Account Overseer
- Member

## Finance

- Weekly contributions
- Monthly targets
- Yearly targets
- Transaction history
- Payment verification
- Withdrawal approvals

## Communication

- Community chat
- Announcements
- Push notifications
- SMS broadcasts

## Member Services

- Join association
- Personal dashboard
- Contribution history
- Fund requests

---

# Technology Stack

| Layer | Technology |
|---------|------------|
| Frontend | HTML |
| Styling | CSS |
| Backend | Go |
| Database | MySQL |
| Reports (Future) | Python |
| Version Control | Git |
| API Testing | Postman |
| Deployment | Later |

## Why This Stack?

### Go

- Fast
- Excellent for APIs
- Strong concurrency
- Production-ready

### MySQL

- Industry standard
- Excellent for relational data
- Perfect for learning SQL fundamentals

### Python

Python will not be used in Version 1.

It will later handle:

- PDF reports
- Excel exports
- Analytics
- Data processing

---

# Development Workflow

Every feature follows this pipeline.

1. Design
2. Database Design
3. Backend Logic
4. Frontend Interface
5. Testing
6. Deployment

> Never skip a stage.

---

# Engineering Architecture

```
HTML + CSS
      │
      ▼
Go HTTP Server
      │
      ▼
MySQL Database
      │
      ▼
Future: Python Reports
```

Each layer has one responsibility.

| Layer | Responsibility |
|---------|----------------|
| HTML | Structure |
| CSS | Appearance |
| Go | Business Logic |
| MySQL | Persistent Data |
| Python | Reporting |

---

# Core Engineering Principles

We will build using real software engineering principles.

## Separation of Concerns

Each layer performs only its own job.

## Single Responsibility

Each feature solves one problem.

## Incremental Development

Ship a working version before adding complexity.

## Database First Thinking

Every feature must first exist in the database design before becoming backend functionality.

---

# Learning Roadmap

## Phase A — MySQL

Topics to master:

### Tables

- CREATE TABLE
- ALTER TABLE
- DROP TABLE

### Data Types

- INT
- VARCHAR
- TEXT
- DATE
- DATETIME
- BOOLEAN
- DECIMAL

### Keys

- Primary Key
- Foreign Key
- UNIQUE
- AUTO_INCREMENT

### CRUD

- INSERT
- SELECT
- UPDATE
- DELETE

### Filtering

- WHERE
- ORDER BY
- LIMIT

### Relationships

- One-to-One
- One-to-Many
- Many-to-Many

### Joins

- INNER JOIN
- LEFT JOIN

### Aggregation

- COUNT()
- SUM()
- AVG()

### Transactions

- BEGIN
- COMMIT
- ROLLBACK

> Every SQL topic will immediately become part of the project.

---

## Phase B — Go Backend

Topics:

- Variables
- Functions
- Structs
- Methods
- Pointers
- Slices
- Maps
- Packages
- Interfaces
- Error Handling
- JSON
- HTTP Server
- REST APIs
- MySQL Connection

Every topic exists because the project requires it.

---

## Phase C — Frontend

### HTML

- Forms
- Tables
- Navigation
- Buttons
- Inputs

### CSS

- Flexbox
- Grid
- Responsive Layout
- Cards
- Spacing
- Colors

### Later

- JavaScript
- WebSockets

---

# Version 1 Modules

## Module 1 — Authentication

- Admin Login
- Association Creation

## Module 2 — Members

- Add Member
- Edit Member
- Remove Member
- View Member List

## Module 3 — Meetings

- Create Meeting
- Attendance
- Meeting Minutes
- Meeting History

---

# Future Modules

## Contributions

Members eventually see:

- Total contributions
- Transaction history
- Monthly targets
- Yearly targets

## Requests

Members request funds.

Approval flow:

Pending → Approved → Rejected

## Community Chat

Will later use WebSockets.

## SMS Notifications

Possible providers:

- Termii
- Twilio
- Africa's Talking

## Payments

Possible providers:

- Paystack
- Flutterwave

Payment flow:

1. Member pays.
2. Payment verified.
3. Database updates.
4. Dashboard reflects changes.

---

# Planned Database (Conceptual)

The future database will eventually contain tables similar to:

- Associations
- Members
- Roles
- Meetings
- Attendance
- Contributions
- Transactions

> We will design these properly before writing SQL.

---

# Project Folder Vision

This is the long-term structure.

```text
MeetingRecord/
│
├── frontend/
│   ├── html/
│   └── css/
│
├── backend/
│   └── go/
│
├── database/
│
├── reports/
│   └── python/
│
├── docs/
│
└── README.md
```

---

# Quality Standards

Before any feature is considered complete:

- [ ] Database reviewed
- [ ] Backend reviewed
- [ ] Frontend reviewed
- [ ] Tested manually
- [ ] No unnecessary complexity
- [ ] Ready for deployment

---

# Current Milestone

We are currently at:

## Phase 0 — Project Foundation

No production code yet.

### Current Objectives

- [x] Freeze Version 1 scope.
- [x] Define project vision.
- [x] Choose technology stack.
- [x] Define development workflow.
- [x] Create architecture documentation.
- [ ] Write the System Requirement Sheet.
- [ ] Design the database.
- [ ] Build the first MySQL tables.
- [ ] Begin backend development.

> Every future decision should align with this document until Version 1 is deployed.
