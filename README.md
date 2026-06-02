# complicated-dugoff-tire-model
Complicated dugoff tire model - MATLAB / SIMULINK
this part, I implemented the Complicated Dugoff tire model in MATLAB/Simulink. The
Simulink structure was kept the same as the Simple Dugoff model. However, the MATLAB
Function block was modified.
In this model, the equations inside the function block were rewritten based on the Complicated
Dugoff formulation given in the lecture notes. This provides a more detailed representation of
the tire behavior compared to the simple version.
The MATLAB Function block used in this model is given below, where the main difference
comes from the updated Dugoff calculations. The code implemented inside the MATLAB
Function block is as follows.
Similarly, a MATLAB script was written to run the Simulink model and observe the results.
This script allows the simulation to be executed and the corresponding force graphs to be plotted
for analysis.
The simulation results of the Complicated Dugoff tire model for slip ratio at 0 = 5∘ and for slip
angle at / = 0.1 are shown in plots.
It is expected that the results of the Simple and Complicated Dugoff models are very similar
under the current simulation conditions. The differences between the models become more
visible at higher slip values or more extreme operating conditions. The Complicated Dugoff
model provides a more accurate and smoother representation of the combined slip behavior
compared to the Simple version.
