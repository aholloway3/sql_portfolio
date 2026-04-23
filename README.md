# SQL Portfolio: Healthcare Eligibility Rules Engine

## Business Problem

A healthcare organization needs to identify patients eligible for a new hypertension management program. Eligibility criteria:
- Diagnosis code I10 (essential hypertension)
- Age 65-75
- Active patient status
- Hospital admission within the last 3 months

## What This Demonstrates

1. **Eligibility logic implementation** — joining patient data to business rules
2. **Data quality assessment** — identifying missing admission dates
3. **Volume troubleshooting** — understanding why patient counts change
4. **Logic breakdown** — showing intermediate steps for validation
5. **Near-miss analysis** — identifying patients who almost qualify

## Files

- `schema.sql` — Table creation statements
- `eligibility_queries.sql` — Main eligibility determination
- `diagnostic_queries.sql` — Data quality and troubleshooting queries

## Real-World Applications

This same pattern applies to:
- Clinical trial recruitment
- Prior authorization automation
- Disease surveillance case finding
- Program enrollment determination
