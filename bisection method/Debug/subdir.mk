################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../getFunction.f95 \
../getRootWithBisection.f95 \
../haveOppositeSigns.f95 \
../main.f95 \
../swapNumbers.f95 

OBJS += \
./getFunction.o \
./getRootWithBisection.o \
./haveOppositeSigns.o \
./main.o \
./swapNumbers.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

getFunction.o: ../getFunction.f95

getRootWithBisection.o: ../getRootWithBisection.f95

haveOppositeSigns.o: ../haveOppositeSigns.f95

main.o: ../main.f95

swapNumbers.o: ../swapNumbers.f95


