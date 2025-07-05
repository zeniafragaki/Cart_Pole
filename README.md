# Inverted Pendulum Control with PID

This project simulates the control of an inverted pendulum mounted on a cart using a **PID controller** in MATLAB.
The inverted pendulum system is modeled using physical parameters and simulated using MATLAB’s Control Toolbox. A PID controller is designed and applied to stabilize the pendulum in the upright position.

---

## ⚙ Parameters

The following constants are used:

- Mass of cart: \( M = 0.5 \, \text{kg} \)
- Mass of pendulum: \( m = 0.2 \, \text{kg} \)
- Friction coefficient: \( b = 0.1 \)
- Pendulum length to center of mass: \( l = 0.3 \, \text{m} \)
- Moment of inertia: \( I = 0.006 \, \text{kg·m}^2 \)
- Acceleration due to gravity: \( g = 9.8 \, \text{m/s}^2 \)

---

## System

## Intermediate Expression

The following term is used for simplification:

$$
q = (M + m)(I + m l^2) - (m l)^2
$$

---

## Transfer Function of the Pendulum

The linearized transfer function from force input to pendulum angle \( \theta(s) \) is:

$$
P_{pend}(s) = \frac{m l s}
{q s^3 + b (I + m l^2) s^2 - (M + m) m g l s - b m g l}
$$

---

## PID Controller in Laplace Domain

The PID controller is implemented as:

$$
G_c(s) = K_p + \frac{K_i}{s} + K_d s
$$

Where:

- \( K_p = 100 \)
- \( K_i = 0.1 \)
- \( K_d = 10 \)

---

## Closed-Loop

A unity feedback configuration is used. The closed-loop transfer function is:

$$
T(s) = \frac{P_{pend}(s) \cdot G_c(s)}
{1 + P_{pend}(s) \cdot G_c(s)}
$$





