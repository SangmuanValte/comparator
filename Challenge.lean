/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

TRUSTED CHALLENGE FILE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

This file defines the TRUSTED PROPOSITION.
The statements below are verified by you to be mathematically correct.
Solutions must prove exactly these theorems.

Trust Boundary: This file and its transitive imports are controlled by you.
Anything imported from here is part of the trusted code base.

PINNED TOOLCHAIN (REPRODUCIBILITY CRITICAL)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Verification MUST be run with:
  • Lean:       4.32.0
  • Comparator: 4.32.0
  • Permitted axioms: ["propext", "Quot.sound", "Classical.choice"]
  • Theorem names: ["todo1"]

ANY DEVIATION in toolchain versions invalidates reproducibility.
Record this exact configuration with all verification evidence.

Verification Configuration
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

This file is used with the following config.json:

{
  "challenge_module": "Challenge",
  "solution_module": "Solution",
  "theorem_names": ["todo1"],
  "permitted_axioms": ["propext", "Quot.sound", "Classical.choice"],
  "toolchain": {
    "lean": "4.32.0",
    "comparator": "4.32.0"
  }
}
-/

/-- 
The main theorem to prove.

This is the TRUSTED PROBLEM STATEMENT.
The solution must prove this exact proposition without using forbidden axioms.
-/
theorem todo1 : True := sorry
