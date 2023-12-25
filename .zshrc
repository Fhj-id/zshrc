export ZSH="$HOME/.oh-my-zsh"

#标准插件可以在 $ZSH/plugins/ 目录中找到，而自定义插件可以添加到 $ZSH_CUSTOM/plugins/ 目录中。
#例如，可以将 plugins 设置为 (git rails python)，以启用 Git、Rails 和 Python三个插件。
#需要注意的是，加载过多的插件会减慢终端的启动速度，因此应该谨慎添加插件。
plugins=(git z autojump zsh-autosuggestions zsh-syntax-highlighting)

#z插件是一个用于快速跳转到最近访问过的目录的命令行工具。
#autojump 功能：实现目录间快速跳转，想去哪个目录直接 j + 目录名，不用在频繁的 cd 了！
#zsh-autosuggestions会记录你之前输入过的所有命令，并且自动匹配你可能想要输入命令，然后按→补全


#设置要加载的主题名称，如果设置为 "random",
#每次加载 Oh My Zsh 时都会随机加载一个主题，
#如果想要知道具体加载了哪个主题，请运行命令: echo $RANDOM_THEME
#请参阅 https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

#在使用 "random" 选项随机加载主题时，用户可以通过设置 
#ZSH_THEME_RANDOM_CANDIDATES 变量来限制随机选择的主题范围。
#如果没有设置 ZSH_THEME_RANDOM_CANDIDATES 或将其设置为空数组，
#则 Oh My Zsh 将从 $ZSH/themes/ 目录中加载主题。
#如果将 ZSH_THEME_RANDOM_CANDIDATES 设置为一个非空数组，
#则 Oh My Zsh 将从该数组中随机选择一个主题作为当前的主题。

#如果要启用大小写敏感补全，
#将 CASE_SENSITIVE 变量设置为 "true"。
# CASE_SENSITIVE="true"


#默认情况下，Zsh终端程序的补全功能是连字符敏感的，
#即输入的命令或文件名中必须按照连字符的顺序和数量进行匹配。
#如果要启用连字符不敏感补全，可以取消注释，
#即在确保大小写敏感补全关闭的情况下，将 _ 和 - 进行互换。
#这样，在输入命令或文件名时，无论输入的是 _ 还是 -，都能够匹配到相应的文件或命令。
HYPHEN_INSENSITIVE="true"

#更新ohmyzsh
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
#更新频率设置
# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# 如果粘贴 URL 和其他文本出现混乱，请取消注释以下行。
# DISABLE_MAGIC_FUNCTIONS="true"

# 取消注释以下行以禁用 ls 中的颜色。
# DISABLE_LS_COLORS="true"

# 取消注释以下行以禁用自动设置终端标题。
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# 启用此功能后，当用户输入的命令有拼写错误时，Zsh 将会自动纠正该命令，并提供可能的正确选项供用户选择。
ENABLE_CORRECTION="true"

#在命令补全时显示等待符号的方法。当用户输入命令时，如果需要等待命令补全，Zsh 将会显示默认的红色圆点（"..."）作为等待符号。
# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

#这段代码是 Oh My Zsh 的配置文件中的注释，提供了禁用将未跟踪的文件标记为 "dirty" 的方法。
#默认情况下，当用户在 Git 等版本控制系统的仓库中工作时，Zsh 会将未跟踪的文件标记为
#"dirty"，即将它们与跟踪的文件区分开来。如果您的仓库非常大，这可能会导致仓库状态检查变慢。
#如果要禁用将未跟踪的文件标记为 "dirty" 的功能，可以取消注释，
#即将 DISABLE_UNTRACKED_FILES_DIRTY 变量设置为 "true"。这样，Zsh 将不再将未跟踪的文件标记为 "dirty"，而是将它们与跟踪的文件一起显示。
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

#更改历史命令时间戳格式的方法
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

#这段代码是 Oh My Zsh 的配置文件中的注释，提供了设置自定义文件夹路径的方法。
#默认情况下，Oh My Zsh 的自定义文件夹位于 $ZSH/custom。
#如果用户想要将自定义文件夹放在其他地方，可以取消注释，即将 ZSH_CUSTOM 变量设置为所需的文件夹路径。
#例如，可以将 ZSH_CUSTOM 设置为 /path/to/new-custom-folder，以指定新的自定义文件夹路径
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# 设置个人别名，覆盖 oh-my-zsh 库提供的别名，
# 插件和主题。别名可以放在这里，不过 oh-my-zsh
# 鼓励用户在 ZSH_CUSTOM 文件夹中定义别名。
# 要获取活动别名的完整列表，请运行 `alias`。

# 别名示例
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#########man 设置中文############
alias cman=‘man -M /usr/share/man/zh_CN’

# export MANPATH="/usr/local/man:$MANPATH"

# 编译标志
export ARCHFLAGS="-arch x86_64"


##########用户配置#######环境变量###########

# export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
################################### CUDA #######################################################################
export PATH="/usr/local/cuda-11.8/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.8/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/cuda-11.8/targets/x86_64-linux/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"

#export PATH="/usr/local/cuda-12/bin:$PATH"
#export LD_LIBRARY_PATH="/usr/local/cuda-12/lib64:${LD_LIBRARY_PATH}"
# dothink
# export LD_LIBRARY_PATH=/home/fl/code/github/Do3think_new:$LD_LIBRARY_PATH
#TensorRT-8.5.3.1 
#export TENSORRT_DIR="/usr/local/TensorRT-8.5.3.1"
#export LD_LIBRARY_PATH="/usr/local/TensorRT-8.5.3.1/lib:$LD_LIBRARY_PATH"

############

#>>> conda 初始化 >>>
#!!该块中的内容由“conda init”管理！
__conda_setup="$('/home/fl/software/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fl/software/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fl/software/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fl/software/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda 初始化 <<<

###############QT 环境设置###########
export QTDIR=~/software/Qt/6.6.1/gcc_64
export PATH=$QTDIR/bin:$QTDIR/libexec:$PATH
export LD_PLUGINS_PATH=$QTDIR/plugins:$LD_PLUGINS_PATH
export LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH
##############opencv4.8.0###############
export LD_LIBRARY_PATH=/home/fl/software/opencv/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/home/fl/software/opencv/lib/pkgconfig:$PKG_CONFIG_PATH
export OpenCV_DIR=/home/fl/software/opencv:$LD_LIBRARY_PATH
##########################################
source $ZSH/oh-my-zsh.sh
