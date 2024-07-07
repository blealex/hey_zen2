if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/blealex/hey_zen2.git /hey_zen2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hey_zen2
fi
cd /hey_zen2
pip3 install -U -r requirements.txt
echo "Starting hey_zen2...."
python3 bot.py
