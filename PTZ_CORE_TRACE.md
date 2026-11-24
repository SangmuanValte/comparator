# PTZ Core — Provenance and Verification Trace

**Record status:** DOCUMENTED / NOT INDEPENDENTLY VERIFIED  
**Scope:** Provenance structure and verification boundaries for the PTZ-Core / Comparator research artifacts  
**Production authorization:** NOT GRANTED

## 1. Governing invariants

- Capability does not imply permission.
- Authorization is distinct from execution.
- Execution completion is distinct from verified success.
- A verification record is evidence, not authorization.
- A later provenance layer must not retroactively redefine an earlier layer.
- No layer may impersonate the evidentiary role of another layer.

## 2. Provenance chain

The intended evidence chain is acyclic:

```text
SOURCE TREE
    |
    v
WITNESS COMMIT
    |
    v
CONTROLLED EXECUTION
    |
    v
VERIFICATION RECORD
    |
    v
CONTENT HASH
    |
    v
SEAL
    |
    v
VAULT HISTORY
    |
    v
INDEPENDENT REPRODUCTION
```

Layer responsibilities:

| Layer | Responsibility | Does not establish |
|---|---|---|
| Source tree | Identifies the source state under review | That the source is correct |
| Witness commit | Binds the reviewed files and declared configuration to Git history | That a verification run passed |
| Execution | Records what a specified environment actually did | Independent reproducibility |
| Verification record | Reports observed checks and outcomes | Authorization or truth beyond its checks |
| Hash | Detects changes to the hashed bytes, subject to the hash algorithm's assumptions | Correctness of the contents |
| Seal | Binds identified evidence and provenance references | That the underlying execution was valid |
| Vault history | Preserves an ordered historical record | Independent reproduction |
| Independent reproduction | Tests whether another party can reproduce the result | Universal correctness or production readiness |

## 3. Identifiers currently available

| Item | Identifier / value | Evidence status |
|---|---|---|
| Repository | `SangmuanValte/comparator` | Repository metadata inspected |
| Default branch | `master` | Repository metadata inspected |
| Source tree | `f09a2b1127765e89c7e578f2727b7cfb7a1ec7fe` | Identifier supplied in the research record; not independently resolved in this document |
| Witness commit | `a15f4b1b4a1ff95ff0ac5e031bfc90f1025d1793` | Commit and declared files/configuration previously inspected |
| Lean toolchain | `4.32.0` | Declared configuration; runtime installation not verified here |
| Comparator version | `4.32.0` | Declared configuration; runtime binary not verified here |
| Challenge module | `Challenge` | Witness content inspected |
| Solution module | `Solution` | Witness content inspected |
| Theorem name | `todo1` | Witness configuration inspected |
| Vault commit | Full identifier not available in the inspected record | NOT VERIFIED |
| Seal and verification-record hashes | Complete, unambiguous values not available here | NOT VERIFIED |

The inspected witness declares a minimal placeholder theorem, `todo1 : True`. Its presence is not evidence of a substantive PTZ-Core theorem or of a PTZ-Core property being proved.

## 4. Verification boundary

The following execution steps are intended to be checked against the exact witness and environment:

1. Resolve and verify the complete source-tree and witness-commit identifiers.
2. Verify the exact `Challenge.lean`, `Solution.lean`, and configuration blobs.
3. Record the Lean, Comparator, `lean4export`, sandbox, operating-system, and relevant dependency versions.
4. Run Comparator in the declared controlled environment.
5. Capture the actual process result and logs.
6. Independently inspect the equivalence and permitted-axiom checks.
7. Confirm Lean kernel replay for the exact solution artifact.
8. Render the complete verification record, then compute its hash.
9. Verify that the seal binds the exact record hash and the intended witness/source/configuration identifiers.
10. Verify the vault commit and its ancestry.
11. Have an independent party reproduce the procedure from the identified artifacts.

A declared command, configuration, or expected result is not a substitute for captured execution evidence. A successful build alone is not a Comparator pass. A Comparator pass alone does not establish the broader PTZ-Core architecture's correctness.

## 5. Required status vocabulary

Use only the status supported by the available evidence:

- **DECLARED** — present in a specification or configuration.
- **IDENTIFIED** — a complete artifact or revision has been resolved.
- **EXECUTED** — the operation was run and its output captured.
- **PASSED** — the named check returned a passing result with inspectable evidence.
- **INDEPENDENTLY REPRODUCED** — a separate party reproduced the result.
- **AUTHORIZED** — the responsible authority explicitly approved the bounded action.
- **DEPLOYED** — the authorized implementation is operating in its declared environment.
- **UNKNOWN / NOT VERIFIED** — evidence is absent, incomplete, or ambiguous.

Do not convert UNKNOWN into PASS. Do not infer authorization from a successful test.

## 6. Current disposition

- Provenance architecture: **DOCUMENTED**
- Witness commit and declared configuration: **INSPECTED**
- Exact full vault commit: **NOT VERIFIED**
- Complete verification record: **NOT VERIFIED**
- Hash-to-record match: **NOT VERIFIED**
- Seal-to-witness/configuration binding: **NOT VERIFIED**
- Comparator execution result: **NOT VERIFIED in this record**
- Independent reproduction: **NOT VERIFIED**
- PTZ-Core implementation assurance: **OPEN**
- Production authorization: **NO**

## 7. Closure condition

The provenance loop is closed only when each required artifact is resolved by its complete identifier, each binding is recomputed and checked, the execution evidence is inspectable, and an independent reproduction succeeds within the stated threat model.

Until then, this file records the intended trace and the evidence boundary; it does not certify a successful proof run, PTZ-Core implementation, or production readiness.

---

**Principle:** Witness establishes source state. Verification establishes observed result. Seal establishes evidence integrity. Vault establishes historical ordering. Independent reproduction establishes reproducibility.
