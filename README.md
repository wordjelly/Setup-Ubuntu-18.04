# SETTING UP UBUNTU 18.04 WITH SOME BASIC DEVELOPER PACKAGES

First ensure that you have ubuntu 18.04 iso on a pendrive.
Boot from that drive and install ubuntu, the ubuntu intallation must complete successfully in order for you to proceed

## Installing REDIS,MONGODB, JAVA, JRE, SUBLIME TEXT FROM A SINGLE SCRIPT

As root user, run :

```
# Type 'Y' at all prompts.

sh ./setup_ubuntu.sh

```

## Installing Ruby

After you have run the above script, switch to any non-root user, and run the file

```
sh ./install_ruby.sh
```

## Installing CUPS for printing, via ruby:
(ONLY REQUIRED IF YOU WANT TO PRINT VIA RUBY USING THE CUPS SERVER)
Cups should be working out of the box without doing anything very special.
To check go to : 127.0.0.1:631 from any browser and you should see the GUI.
However in order to use the cups api from ruby you need to additionally do the following:

```
apt-get install libcups2-dev
gem install cupsffi
```

### Versions installed:

Redis : latest stable version
Mongodb: 4.0
JDK,JRE : latest stable version
Ruby : 2.4.6
Bundler : 1.16.6
Rails : 5.2.3
Sublime : latest stable version
