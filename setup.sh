#!/bin/bash
# # running scripts as root
# if [ "$EUID" -ne 0 ]
# then
#   echo "Please re-run as root!"
#   exit
# else
#   # setup python env
#   apt install python3-venv;
# fi

# setup neovim
mkdir -p /home/$USER/.config;
if [ -d /home/$USER/.config/nvim ];
then
  rm /home/$USER/.config/nvim;
fi

# install neovim config
ln -s $(pwd)/config/nvim /home/$USER/.config/nvim;

#setup default python environment
which python3 >> /dev/null;
if [ $? -ne 0 ];
then
  echo 'Install python3 and python3-venv then create environment manually.'
else
  python3 -m venv $USER;
  echo $USER/>>.gitignore
  if [ $? -eq 0 ];
  then
    ./$USER/bin/pip install jupyter notebook;
    if [ $? -ne 0 ];
    then
      echo 'pip install failed!';
    else
      if [ -f ~/.zshrc ];
      then
        echo 'source /home/$USER/sp3rtah/$USER/bin/activate' >> /home/$USER/.zshrc
      else
        echo 'add: source /home/$USER/sp3rtah/$USER/bin/activate to your shell script'
      fi
    fi
  fi
fi
