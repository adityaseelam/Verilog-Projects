In this little project, Ive written a program involving usage of FSM. As you'all know we have Mealy State and Moore State Machines so, Ive written a Program based on
sequence detector. The sequence detector is going to take inputs serially and if it detects the pattern **11011** its going to output **1** and if it doesnt then its 
going to output **0**. Also Ive considered the possibility of overlapping of bits. 
Here is the timing diagrams of the both State Machine codes.

<div align="center">
<h3> MEALY TIMING</h3>
![Moore](https://github.com/user-attachments/assets/1b4ff166-aa2e-4663-97d1-f4de23921833)

As you can see even though we get 11011 sequence but in the next state we are getting the output so output is function of only current state.

<h3> MOORE TIMING</h3>
![Mealyy](https://github.com/user-attachments/assets/56520f17-54b7-4b70-b019-d64b2f4eec13)
As you can see as soon as we get 11011 sequence we are getting the output in that state itself so output is the function of input as well as current state.
</div>
