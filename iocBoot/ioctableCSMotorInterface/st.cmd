#!../../bin/darwin-x86/tableCSMotorInterface

#- You may have to change tableCSMotorInterface to something else
#- everywhere it appears in this file

< envPaths

epicsEnvSet("PREFIX", "MCT:")
epicsEnvSet("DEVICE", "TBL1:")
epicsEnvSet("AXIS", "PITCH")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/tableCSMotorInterface.dbd"
tableCSMotorInterface_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/table_axis_move.db","P=$(PREFIX),R=$(DEVICE),A=$(AXIS),M1Unkill=Motor1UnkillCmd,M2Unkill=Motor2UnkillCmd,CSAxis=US")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=waynelewis"
