# Inverted Pendulum Control with PID

This project simulates the control of an inverted pendulum mounted on a cart using a **PID controller** in MATLAB.
The inverted pendulum system is modeled using physical parameters and simulated using MATLAB’s Control Toolbox. A PID controller is designed and applied to stabilize the pendulum in the upright position.

<p align="center">
  <img src="https://github.com/user-attachments/assets/8bd3c086-f811-45ed-8ea3-63b971fddc81" alt="Cart Pole" />
</p>

<p align="center">
 Figure 1: Basic (Cart Pole Scheme)[https://www.mathworks.com/help/symbolic/derive-and-simulate-cart-pole-system.html]
</p>

## Parameters

The following constants are used:

- Mass of cart:  M = 0.5 (kg)
- Mass of pendulum:  m = 0.2(kg)
- Friction coefficient: b = 0.1
- Pendulum length to center of mass: l = 0.3 (m)
- Moment of inertia:I = 0.006 (kg·m^2) 
- Acceleration due to gravity: g = 9.8 (m/s^2)



## System

## Intermediate Expression

The following term is used for simplification:

$$
q = (M + m)(I + m l^2) - (m l)^2
$$



## Transfer Function of the Pendulum

The linearized transfer function from force input to pendulum angle theta is:

$$
P_{pend}(s) = \frac{m l s}
{q s^3 + b (I + m l^2) s^2 - (M + m) m g l s - b m g l}
$$



## PID Controller in Laplace Domain

The PID controller is implemented as:

$$
G_c(s) = K_p + \frac{K_i}{s} + K_d s
$$

## Closed-Loop

A unity feedback configuration is used. The closed-loop transfer function is:

$$
T(s) = \frac{P_{pend}(s) \cdot G_c(s)}
{1 + P_{pend}(s) \cdot G_c(s)}
$$

## Purpose of using this system

`cart_pole.m` is a script for experimenting a systems behavior using a simple PID controller.Differences can be observed by changing the gains of the controller.





