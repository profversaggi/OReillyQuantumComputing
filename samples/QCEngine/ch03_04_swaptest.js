// Programming Quantum Computers
//   by Eric Johnston, Nic Harrigan and Mercedes Gimeno-Segovia
//   O'Reilly Media

// To run this online, go to http://oreilly-qc.github.io?p=3-4


qc.reset(3);
var input1 = qint.new(1, 'input1');
var input2 = qint.new(1, 'input2');
var output = qint.new(1, 'output');
// Initialize the output register
// Initialize input registers that we want to compare
// In this example the swap test should reveal their equality
qc.label('Initialize');
input1.write(0);
input2.write(0);
qc.label('');
qc.nop()
// The swap test itself
qc.label('Swap test')
output.write(0);
output.had();
// Now exchange the two inputs conditional on the output qubits.
input1.exchange(input2, 0x1, output.bits());
output.had();
output.not();
// The output register is 1 only if inputs are equal
output.read();
qc.label('');
qc.nop();
