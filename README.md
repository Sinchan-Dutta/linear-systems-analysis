# Output-Feedback Control of a 14-State Linear System

A MATLAB course project on stabilizing an open-loop unstable linear time-invariant system with 14 states, three inputs and two measured outputs. The design combines Kalman decomposition, a reduced-order Luenberger observer and LQR feedback, then evaluates the controller on the full plant.

- [Report with derivations and plots](docs/report.pdf)
- [MATLAB source](src/control_system_assignment.m)

## Run the simulation

Set your MATLAB working directory to the repository root and run:

```matlab
run('src/control_system_assignment.m')
```

The script covers open-loop analysis, observer convergence, closed-loop stabilization, reference tracking and additive input disturbances. See the report for the corresponding plots.

## Design and evaluation

1. **Open-loop dynamics.** Inspect the eigenvalues and simulate the unforced system from random initial conditions.
2. **Stabilizability and detectability.** Apply Popov–Belevitch–Hautus (PBH) rank tests to the unstable modes using explicit row reduction.
3. **Kalman decomposition.** Compute subspace intersections using the Zassenhaus algorithm and extract the controllable and observable subsystem for feedback design.
4. **Reduced-order observer.** Separate the measured coordinates and compute the Luenberger observer gain using a continuous-time Lyapunov equation solved through Kronecker vectorization.
5. **LQR state feedback.** Recover the stabilizing Riccati solution from the stable invariant subspace of the Hamiltonian matrix.
6. **Output feedback.** Check the separation principle using the regulator and observer pole sets, then simulate nonzero reference tracking and the response to additive input disturbances on the full 14-state model.

## What the simulations show

The observer error converges in the nominal simulation, and the full-order closed loop tracks the selected nonzero reference. With additive input disturbances, the trajectories remain bounded over the simulated interval and continue to fluctuate. The [report](docs/report.pdf) contains the derivations and plots for both cases.

## Worked example: Furuta pendulum

The pendulum example applies the same Hamiltonian LQR method to a model linearized about the upright equilibrium. An energy-based controller swings the pendulum up while a proportional-derivative term centers the arm. Near upright, the feedback switches to the LQR law. The [Furuta pendulum repository](https://github.com/Sinchan-Dutta/furuta-pendulum) contains the MATLAB swing-up and balancing simulation and a separate Python nonlinear MPC implementation.
