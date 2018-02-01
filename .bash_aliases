alias gs='git st'
alias gbc='./gradlew clean build connectedAndroidTest'
alias gb='./gradlew clean build'
alias gat='./gradlew clean cAT'
alias merges='git log --oneline --merges --pretty=format:%ci\ %s'
alias dump-aapt='~/android-sdk-linux/build-tools/21.1.2/aapt dump badging app-release-unsigned.apk'
alias gt='./gradlew clean testDebug compileDebugAndroidTestJava' 
alias gtt='./gradlew testDebug --tests $1'
alias pushit="git push origin HEAD -u && git push gitlab HEAD"
alias fix-keyboard='ibus-daemon -rd'
alias slow="sudo tc qdisc add dev eth0 root netem delay 700ms"
alias fast="sudo tc qdisc del dev eth0 root"
alias push='git push origin HEAD'
alias st='git status'
alias xopen='xdg-open'
alias clean-docker='docker rm -v $(docker ps -a -q -f status=exited)'

