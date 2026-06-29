# Linear Systems Analysis: Kalman Decomposition, Observer Design, LQR Control, and Reference Tracking

This repository contains a MATLAB-based control systems assignment implementing a complete output-feedback design pipeline for a 14-state, 3-input, 2-output linear time-invariant (LTI) system, followed by an application of the same design tools to inverted pendulum stabilization.

## Project structure

```
linear-systems-analysis/
├── docs/
│   └── report.pdf          # Full writeup: derivations, code, and results
├── src/
│   └── control_system_assignment.m
├── .gitignore
└── README.md
```

## Overview

Given a 14-state system with 3 inputs and 2 outputs, only some of which is controllable and observable, the assignment builds a stabilizing output-feedback controller from first principles rather than relying on MATLAB's built-in design functions, and verifies each stage of the design with simulation.

The pipeline covers:

- **Open-loop analysis**: simulating the autonomous system from random initial conditions and confirming instability via phase portraits and eigenvalue inspection.
- **Stabilizability and detectability**: PBH (Popov–Belevitch–Hautus) rank tests applied to every unstable eigenvalue, implemented directly via row-reduction rather than a toolbox call, to confirm that a stabilizing output-feedback compensator exists.
- **Kalman decomposition**: decomposing the 14-dimensional state space into its four canonical subspaces (controllable/observable, controllable-only, observable-only, neither) using a self-implemented Zassenhaus algorithm to compute the necessary subspace intersections, then extracting the reduced-order controllable-and-observable subsystem that the rest of the design operates on.
- **Reduced-order Luenberger observer**: a coordinate change isolates the directly measurable part of the state, and the observer gain for the remaining unmeasured part is obtained by solving a continuous Lyapunov equation (via direct Kronecker-product vectorization, rather than a black-box `lyap` call), placing the estimation error dynamics in the stable left half-plane.
- **LQR state feedback**: the optimal gain is derived from the algebraic Riccati equation's stabilizing solution, computed via the Hamiltonian eigenvector method rather than a built-in LQR solver, making the underlying Riccati solution explicit.
- **Output-feedback via the separation principle**: the observer and LQR gain are combined, with the closed-loop poles confirmed to be the union of the regulator and observer pole sets, both stable. The design is then lifted from the reduced-order subsystem back to the full 14-state system and demonstrated tracking an arbitrary, nonzero reference state.
- **Noise and disturbance robustness**: both the reduced and full closed-loop systems are stress-tested with additive input disturbances, showing bounded-input bounded-output behavior without convergence to a fixed point — illustrating the limits of a purely deterministic LQR/Luenberger design and motivating stochastic alternatives such as Kalman filtering for genuine noise rejection.
- **Inverted pendulum stabilization**: as a worked application, the same Hamiltonian-eigenvector LQR design is applied to a Furuta (rotary inverted) pendulum, linearized about its upright equilibrium. Since LQR alone cannot recover the pendulum from a large initial angle, it is combined with an energy-shaping swing-up law (with a proportional-derivative term keeping the arm centered) that pumps energy into the pendulum until it is close enough to upright for the linear controller to take over.

## Key implementation notes

- All structural tests (controllability, observability, stabilizability, detectability) are implemented via explicit rank/RREF computations rather than toolbox convenience functions, to make the underlying linear algebra visible.
- The Riccati equation (for both the observer's Lyapunov-based gain and the LQR gain) is solved via eigendecomposition of the associated Hamiltonian matrix, partitioning its stable eigenvectors to reconstruct the solution — a classical alternative to iterative Riccati solvers.
- Numerical rank and zero-row tests use a fixed tolerance of 1e-8 throughout, appropriate given that the relevant Hamiltonian matrices have no purely imaginary eigenvalues (guaranteed by the system's confirmed stabilizability and detectability).

See `docs/report.pdf` for the full derivations, code listings, and result plots referenced above.
