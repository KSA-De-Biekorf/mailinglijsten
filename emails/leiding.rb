#!/usr/bin/env ruby

require_relative '../logger.rb'
#require_relative '../parse_email.rb'
require_relative '../bannen.rb'
require_relative '../env.rb' # register environment variables

$log.info "Email received for leiding@ksadebiekorf.be"

# ENV["LOG_TO_STDOUT"] = "1"
$log.info `/home/k16461ks/mailinglijsten/mails resend --ban #{Ban::LEIDING}`

$log.info "Script finished"

=begin
begin
$log.info "Parsing email..."
mail = parse_mail
$log.info mail

if mail.is_spam == "YES"
	$log.fatal("Email was classified as spam and is not whitelisted") # TODO: whitelist emails: map[mailinglijst]email
	STDERR.puts "Email was classified as spam"
	exit(1)
else
	$log.info "Email is not classified as spam, continuing to send email"
end

$log.info `LOGFILE="/home/k16461ks/mailinglijsten/mails-util-log.txt" /home/k16461ks/mailinglijsten/mails send --reply-to "#{mail.from}" --content-type "#{mail.content_type || "text/html"}" --subject "#{mail.subject}" --message "#{mail.message}" --ban #{Ban::LEIDING}`
rescue => err
	$log.error err
end

$log.info "Script finished"

=end
