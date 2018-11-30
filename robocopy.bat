@ECHO OFF
SETLOCAL
 
SET _source=D:\Data\
 
SET _dest=Z:\Backup\
 
SET _what=/COPYALL /B /SEC /MIR
:: /COPYALL :: COPY ALL file info
:: /B :: copy files in Backup mode. 
:: /SEC :: copy files with SECurity
:: /MIR :: MIRror a directory tree 
 
SET _options=/R:1 /W:0 /LOG:MyLogfile.txt /V
:: /R:n            :: number of Retries
:: /W:n            :: Wait time between retries
:: /LOG            :: Output log file
:: /NFL            :: No file logging
:: /NDL            :: No dir logging 
:: /L              :: Don't actually do the heavy lifting

:: /MAXAGE:YYYMMDD ::20171115 :: Only copy files created or modified from this date forward
ROBOCOPY %_source% %_dest% %_what% %_options%
