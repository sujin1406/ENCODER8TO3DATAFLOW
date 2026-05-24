### ENCODER 8TO3 DATAFLOW Modelling

**AIM:**

To implement  Encoder 8 To 3 in Dataflow Modelling using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:** Quartus prime

**THEORY**

**Encoder 8 To 3**

The 8 to 3 line Encoder is also known as Octal to Binary Encoder. In 8 to 3 line encoder, there is a total of eight inputs, i.e., D0, D1, D2, D3, D4, D5, D6, and D7 and three outputs, i.e., A0, A1, and A2. In 8-input lines, one input-line is set to true at a time to get the respective binary code in the output side. Below are the block diagram and the truth table of the 8 to 3 line encoder.

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/0bc242c1-eb9e-4c47-afe5-30428470efc3)

Figure 01  Block Diagram of Encoder 8 * 3

**Truth Table**

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/35496b14-ae6e-4cd1-9abd-d6736b576575)

The logical expression of the term A0, A1, and A2 are as follows:

A0 = D1 + D3 + D5 + D7

A1 = D2 + D3 + D6 + D7

A2 = D4 + D5 + D6 + D7

Logical circuit of the above expressions is given below:

![image](https://github.com/naavaneetha/ENCODER8TO3DATAFLOW/assets/154305477/95acaee6-c873-4c75-89eb-ef09fb158053)

Figure 02  Encoder 8 * 3

**Procedure**

1. Open Quartus Prime software and create a new project.

2. Select the project location, project name, and target FPGA device.

3. Create a new Verilog HDL file for the 8-to-3 Encoder using Dataflow Modelling.

4. Write the Verilog code for the encoder using assign statements and logical OR operations.

5. Save the file with `.v` extension and add it to the Quartus project.

6. Set the encoder module as the top-level entity.

7. Compile the design using **Processing → Start Compilation**.

8. Verify that the compilation is completed successfully without errors.

9. Generate the RTL schematic to verify the logic implementation of the encoder circuit.

10. Open the University Program Waveform Editor for simulation.

11. Create the input waveforms for `din[0]` to `din[7]` according to the truth table combinations.

12. Run the functional simulation and observe the outputs `a`, `b`, and `c`.

13. Verify the output timing waveforms with the truth table values of the 8-to-3 Encoder.

14. Record the obtained simulation outputs and waveform results.



**PROGRAM**



Developed by: Sujin M L

RegisterNumber: 212225040435

```
module D5(din, a, b, c);

    input [0:7] din;
    output a, b, c;

    assign a = (din[4] | din[5] | din[6] | din[7]);
    assign b = (din[2] | din[3] | din[6] | din[7]);
    assign c = (din[1] | din[3] | din[5] | din[7]);

endmodule
```


**RTL LOGIC FOR Encoder 8 To 3 in Dataflow Modelling**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 151052" src="https://github.com/user-attachments/assets/ec5f8846-b923-4cd0-bcd3-2863a4c3d3c0" />

**TIMING DIGRAMS FOR Encoder 8 To 3 in Dataflow Modelling**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 151310" src="https://github.com/user-attachments/assets/621adc32-4fa7-4a90-bfa3-af897bfc42ac" />

**RESULTS**

Thus the Encoder 8-to-3 using Dataflow Modelling was successfully implemented using Verilog HDL in Quartus Prime software





