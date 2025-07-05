# Inverted Pendulum Control with PID

This project simulates an inverted pendulum on a cart using a **PID controller** in MATLAB.

![Inverted Pendulum Diagram](https://upload.wikimedia.org/wikipedia/commons/e/e5/InvertedPendulumAnimation.gif)

## 🔧 Author
**Zenia Fragaki**  
GitHub: [@ZeniaFragaki](https://github.com/YourGitHubUsername)

---

## 📋 System Overview

The inverted pendulum is a classic control problem involving a cart and a pole hinged to it. The goal is to keep the pole balanced by moving the cart.

**Plant parameters:**

- Mass of cart: \( \mathbf{M = 0.5} \, \text{kg} \)
- Mass of pendulum: \( \mathbf{m = 0.2} \, \text{kg} \)
- Friction coefficient: \( \mathbf{b = 0.1} \)
- Pendulum length to center of mass: \( \mathbf{l = 0.3} \, \text{m} \)
- Moment of inertia: \( \mathbf{I = 0.006} \, \text{kg·m}^2 \)
- Gravity: \( \mathbf{g = 9.8} \, \text{m/s}^2 \)

---

## 📐 Equations

### 📌 Intermediate Variable

\[
\mathbf{q = (M + m)(I + m l^2) - (m l)^2}
\]

---

### 🚀 Transfer Function of the Pendulum Angle (output) w.r.t. Force (input)

\[
\mathbf{P_{pend}(s) = \frac{m l s}{q s^3 + b (I + m l^2) s^2 - (M + m) m g l s - b m g l}}
\]

---

### 🎯 PID Controller

The PID controller used is:

\[
\mathbf{Gc(s) = K_p + \frac{K_i}{s} + K_d s}
\]

with:

- \( \mathbf{K_p = 100} \)
- \( \mathbf{K_i = 0.1} \)
- \( \mathbf{K_d = 10} \)

---

## 🔁 Closed-Loop System

The control is applied in a unity feedback configuration:

\[
\mathbf{T(s) = \frac{P_{pend}(s) \cdot G_c(s)}{1 + P_{pend}(s) \cdot G_c(s)}}
\]

---

## 📊 Simulation

The script simulates the **impulse response** of the closed-loop system over a 20-second period.

### 📈 Output:

- Controlled variable: Pendulum angle \( \theta(t) \)
- Simulation method: MATLAB Control Toolbox (using `tf`, `feedback`, `impulse`)

---

## 📁 Files

- `cart_pole.m` — Main simulation script
- `README.md` — This file

---

## ✅ Requirements

- MATLAB (tested on R2023+)
- Control System Toolbox

---

## 🔗 Resources

- [CTMS - Inverted Pendulum](https://ctms.engin.umich.edu/CTMS/index.php?example=InvertedPendulum&section=SystemModeling)
- [Wikipedia - Inverted Pendulum](https://en.wikipedia.org/wiki/Inverted_pendulum)

---

## 📜 License

MIT License (or your preferred one)

---

