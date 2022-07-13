#Clean your terminal screen.
alias c="clear"
#Go up the directory once
alias ..='cd ..'
#Go up the directory twice.
alias ...='cd ../..'
#Search shell history
alias histg="history | grep"
#Show which applications are connecting to the network.
alias listen="lsof -P -i -n" 
#Get your public IP address and host.
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"
#Restart
alias reboot="sudo /sbin/reboot"
#Shutdown
alias shutdown="sudo /sbin/shutdown -h now"
#Restart zsh shell
alias ezsh="source ~/.zshrc"
#Edit zsh and restart shell
alias ezsh="vim ~/.zshrc && source ~/.zshrc"
