# @file Makefile
# @author Joseph Russell
# @date 2026-02-18
# @brief This file is the makefile of the assignment

 CC= g++
CFLAGS= -g -Wall -Wextra
default: Main
Main: main.o Employee.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o Main main.o Employee.o Officer.o Supervisor.o #compiles with all errors and warnings
main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp #compiles main
Employee.o: Employee.cpp
	 $(CC) $(CFLAGS) -c Employee.cpp #compiles Employee
Officer.o: Officer.cpp
	$(CC) $(CFLAGS) -c Officer.cpp #compiles Officer
Supervisor.o: Supervisor.cpp
	 $(CC) $(CFLAGS) -c Supervisor.cpp #compiles Supervisor
clean:
	$(RM) Main *.o *~
	$(RM) Employee *.o *~
	$(RM) Officer *.o *~
	$(RM) Supervisor *.o *~
