################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../fixedPointIteration.f95 \
../getDerivative.f95 \
../getFunction.f95 \
../getFunctionForFixedPoint.f95 \
../mainOpenMethods.f95 \
../newtonRaphson.f95 \
../secantMethod.f95 

OBJS += \
./fixedPointIteration.o \
./getDerivative.o \
./getFunction.o \
./getFunctionForFixedPoint.o \
./mainOpenMethods.o \
./newtonRaphson.o \
./secantMethod.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fixedPointIteration.o: ../fixedPointIteration.f95

getDerivative.o: ../getDerivative.f95

getFunction.o: ../getFunction.f95

getFunctionForFixedPoint.o: ../getFunctionForFixedPoint.f95

mainOpenMethods.o: ../mainOpenMethods.f95

newtonRaphson.o: ../newtonRaphson.f95

secantMethod.o: ../secantMethod.f95


