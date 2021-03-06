# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# below is what is supposed to prep the ENV for Oracle Build and Run

export LD_LIBRARY_PATH=/home/nodester/DevTools/oracle/client64/lib:$LD_LIBRARY_PATH
export OCI_HOME=/home/nodester/DevTools/oracle/client64
export OCI_LIB_DIR=$OCI_HOME/lib
export OCI_INCLUDE_DIR=$OCI_HOME/sdk/include
export OCI_VERSION=12
export NLS_LANG=AMERICAN_AMERICA.UTF8

cd $OCI_LIB_DIR
ln -s libclntsh.dylib.12.1 libclntsh.dylib
ln -s libocci.dylib.12.1 libocci.dylib
cd ~