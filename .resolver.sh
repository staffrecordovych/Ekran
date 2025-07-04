REQUIRED_KERNEL_VERSION=3.20

if [[ $(uname) != "Linux" ]]; then
    echo "This installation package is intended for a different operating system."
    exit 1
fi

if [ $(printf "%s\n%s\n" $(uname -r) $REQUIRED_KERNEL_VERSION | sort -V | head -n1) == $(uname -r) ]; then
    echo Installing package for kernel version 3.20 and lower  
    tar -xf Linux-kernel-3.20-and-lower_agent_x64.tar.gz
else
    echo Installing package for kernel version higher than 3.20
    tar -xf Linux-kernel-3.20-and-higher_agent_x64.tar.gz
fi

if [[ -f "connection" ]]; then
   cp connection EkranClient/connection
fi

if [[ -f "settings.ini" ]]; then
   cp settings.ini EkranClient/settings.ini 
fi

cd EkranClient