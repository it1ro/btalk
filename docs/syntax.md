# btalk — DSL Syntax

`btalk` allows you to describe BPMN processes in a textual format using Ruby-like syntax.

## Basic Elements

- **Start**: `start "label"`
- **Task**: `:task name:`
- **End**: `end "label"`

## Conditions (Branching)

```text
if "condition?"
  :task1:
  :task2:
elsif "another condition?"
  :task3:
else
  :task4:
end
```

Rules:

- `if` is mandatory
- `elsif` — zero or more
- `else` — optional
- Branches may contain only tasks (in MVP)

## Comments

Any line starting with `//` is ignored.

## Execution Flow

Elements are executed **strictly in order of appearance**. Branching creates a fork, after which the flow merges back together.

## Examples

### Password Reset

```text
start "Reset request"
:Enter email:
:Find account:
if "Account exists?"
  :Send email:
else
  :Log attempt:
end
:Finish process:
end "Done"
```

### Invoice Approval

```text
start "Invoice received"
:Validate data:
:Approve:
end "Completed"
```
