# mpc_2drones_bar


This example is a system of 2 quadcopter model and an articulated controlled by an MPC controller. To run the program, use `simulate.m`.

The MPC controller corresponds to the optimize_trajectory.m.
The controller is implemented with fmincon, which has a cost function and a corresponding nonlinear constraints function 
called `discretization.m`. This last function uses `timestep_euler.m` to implement the dynamics constraint.

The `system_ode.m` corresponds to the model equations.
The simulation is made with the `simulate_timestep.m` that uses the 'system_ode.m`

To see a plot of the states and control use `simulate_states.m`, that runs states.mat and control.mat.
