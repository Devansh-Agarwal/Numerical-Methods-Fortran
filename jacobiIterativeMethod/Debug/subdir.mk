################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../diagonallyDominant.f95 \
../jacobi.f95 \
../mainIterative.f95 \
../printMatrix2D.f95 

OBJS += \
./diagonallyDominant.o \
./jacobi.o \
./mainIterative.o \
./printMatrix2D.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

diagonallyDominant.o: ../diagonallyDominant.f95

jacobi.o: ../jacobi.f95

mainIterative.o: ../mainIterative.f95

printMatrix2D.o: ../printMatrix2D.f95


