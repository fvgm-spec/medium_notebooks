### Installing Java JDK
Now what you need to do is to type your first command line :

* sudo apt update
* sudo apt install openjdk-11-jdk
* java --version

### Updating configuration files
.bashrc
`nano ~/.bashrc`

### Installing Anaconda

`wget https://repo.continuum.io/archive/Anaconda3-5.3.1-Linux-x86_64.sh`
`bash Anaconda3-5.3.1-Linux-x86_64.sh`

### Inatalling Spark

`wget https://dlcdn.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz`
`mkdir ~/hadoop/spark-3.3.0`
`tar -xvzf spark-3.3.0-bin-hadoop3.tgz -C ~/hadoop/spark-3.3.0 --strip 1`

### Adding paths to .bashrc or .zshrc files

export SPARK_HOME=~/hadoop/spark-3.3.0                                
export PATH=$SPARK_HOME/bin:$PATH

### Setting spark-defaults.conf file

cp $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf

nano $SPARK_HOME/conf/spark-defaults.conf
spark.driver.host	localhost


* If gzip is not reconizing the `tar` command, prompting the error:

`Syntax error:"(" unexpected`

run:

echo -en '\x10' | sudo dd of=/usr/bin/gzip count=1 bs=1 conv=notrunc seek=$((0x189))


