// Programming Quantum Computers
//   by Eric Johnston, Nic Harrigan and Mercedes Gimeno-Segovia
//   O'Reilly Media
//
// More samples like this can be found at http://oreilly-qc.github.io
//
// A complete set of all OpenQASM samples (including this one) can be found at
//  https://github.com/oreilly-qc/oreilly-qc.github.io/tree/master/samples/OpenQASM
//
// OpenQASM code was generated with the help of Qiskit (http://qiskit.org) 
// A complete set of all Qiskit samples (including this one) can be found at
//  https://github.com/oreilly-qc/oreilly-qc.github.io/tree/master/samples/Qiskit

// Run this sample in the IBM Q Experience Circuit Composer
// at https://quantum-computing.ibm.com

// Example 3-1: Seperable Qubits

OPENQASM 2.0;
include "qelib1.inc";

qreg q1[1];
qreg q2[1];
qreg q3[1];

h q2[0];
h q3[0];
