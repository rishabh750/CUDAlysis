# CUDAlysis

INTRODUCTION

  Objective
  
  The objectives of the project are:-
  
     To analyse the performance of a single processor CPU
     To analyse the performance of a multi core GPU
     To compare the performance of serial and parallel processing
     To implement various algorithms of basic and advance usage.
    
FUTURE SCOPE
   
  The software presently only provides results of implementation of the algorithms on a pre-set input file. The following functions can   be expected from the improved versions following this initial foundational release.

     User defined input of image.
     User defined output of the input.
     User defined display of results in different types of plots like line graphs, column graphs bar graphs etc.
     Implementation of many more algorithms.
     Implementation of algorithms other than Image Processing.
     Reduced fetch cycle period with usage of different library functions
  
CONCLUSION

  Analysed few basic Image Processing algorithms giving 1.6x speedup without fetch and 1.08x speedup with fetch when implemented on CUDA C++ over C++ with 25-48.7% functional parallelism (100% data parallelism) according to Ahmdal's law.
