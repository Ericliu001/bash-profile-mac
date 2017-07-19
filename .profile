
alias studio="open -a Android\ Studio ./build.gradle"
alias myrepo="cd ~/Development/Repositories/EricLiu"
alias dumpsys="adb shell dumpsys activity activities | sed -En -e '/Stack #/p' -e '/Running activities/,/Run #0/p'"

# Git config: add the current branch, and the status of the working directory info to the # prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '


# Git config: load the .git-completion.bash file if it exists
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# setup gradle path
GRADLE_HOME=~/Development/Android/gradle-2.5;
export GRADLE_HOME
export PATH=$PATH:$GRADLE_HOME/bin


＃ android home 
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

# add jdk to path
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home


# The next line enables shell command completion for gcloud.
source '~/Development/Cloud/google-cloud-sdk/completion.bash.inc'

# The next line updates PATH for the Google Cloud SDK.
source '~/Development/Cloud/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '~/Development/Cloud/google-cloud-sdk/completion.bash.inc'

# Setting PATH for Python 2.7
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
alias python='python3'
