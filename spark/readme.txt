tar -xvf scala-2.11.8.tgz
tar -xvf spark-1.6.1-bin-hadoop2.6.tgz
sudo mv scala-2.11.8 /usr/local/scala
sudo cp -r spark-1.6.1-bin-hadoop2.6 /usr/local/spark
sudo chown -R hadoop:hadoop /usr/local/scala
sudo chown -R hadoop:hadoop /usr/local/spark

Copiar el arvhivo "spark.env.sh" y "slaves" en la ruta /usr/local/spark/conf

Dentro del archivo .bashrc del usuario hadoop poner las siguientes exportaciones:
# Scala
export SCALA_HOME=/usr/local/scala
export PATH=$PATH:$SCALA_HOME/bin
# Spark
export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin