# 🛡️ Intelligent Border Surveillance Decision System (Simulation)

A **software-based border surveillance decision system** that intelligently classifies threats using **multi-sensor input fusion** to reduce false alarms and improve security response accuracy.  
This project is implemented **purely in simulation** using **Digital Logic, FSM concepts, Verilog HDL, and C++**.

---

## 📌 Project Overview

Traditional border surveillance systems often rely on a **single sensor**, which leads to frequent **false alarms** caused by animals, weather, or environmental disturbances.

This project solves the problem by:
- Combining **multiple sensor inputs**
- Using **FSM-based decision logic**
- Generating **priority-based security alerts**

---

## 🎯 Objectives

- Reduce false alarms in surveillance systems  
- Classify threats accurately  
- Implement intelligent decision logic using FSM  
- Develop a **hardware-free simulation model**  
- Make the system scalable and interview-ready  

---

## 🔧 System Inputs & Outputs

### **Inputs (Digital Flags)**
| Input | Description |
|------|------------|
| Motion Sensor Flag | Detects movement |
| IR Sensor Flag | Detects heat / human presence |
| Vibration Sensor Flag | Detects ground disturbances |

> `1` → Sensor triggered  
> `0` → No detection  

### **Outputs**
| Output | Meaning |
|------|--------|
| ALERT | High-confidence threat |
| WARNING | Suspicious activity |
| IGNORE | False alarm / safe condition |

---

## 🧠 Decision Logic

| Motion | IR | Vibration | Decision |
|------|----|-----------|---------|
| 0 | 0 | 0 | IGNORE |
| 1 | 0 | 0 | WARNING |
| 0 | 1 | 0 | WARNING |
| 0 | 0 | 1 | WARNING |
| ≥2 sensors active | | | ALERT |

✔ Two or more sensors active → **ALERT**

---

## 🔁 FSM Design

### **FSM States**
- **IDLE** → No sensor active → `IGNORE`
- **SUSPICIOUS** → Single sensor active → `WARNING`
- **THREAT** → Multiple sensors active → `ALERT`

### **State Transitions**
