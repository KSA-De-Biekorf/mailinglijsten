# Logging script for use in all email scripts

require 'logger'
# Leave 3 oldest logs, and max of 500000 bytes (0,5 mb)
$log = Logger.new('/home/k16461ks/mailinglijsten/scripts-log.txt', 3, 500000)
$log.info "===#{$PROGRAM_NAME}===" # $PROGRAM_NAME is equal to the name of the file being run
