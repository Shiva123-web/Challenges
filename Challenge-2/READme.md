AWS-Metadata-JSON

Create an EC2 Linux instance on AWS
SSH into the instance

Install Python 3 and git on your instance
$ sudo yum install python3 git
Clone this repository
$ git clone https://github.com/Shiva123-web/Challenges

Install pipenv
$ sudo pip3 install pipenv

Open the repository on your instance
$ cd Challenges/Challenge-2
Install project dependancies
$ pipenv install


How to run:

install Request Python 3: 
$ sudo pip3 install requests
Run whichever script you need:
python3 get_metadata.py
python3 get_key.py
