## Learning Apache Druid

### Quickstart guide

#### Installing Druid

Download the latest release from its [official downloads page](https://www.apache.org/dyn/closer.cgi?path=/druid/27.0.0/apache-druid-27.0.0-bin.tar.gz) and once you have dowloaded the tar file you can extract it in your home directory:

```bash
tar -xzf apache-druid-27.0.0-bin.tar.gz
cd apache-druid-27.0.0
```

#### Starting up Druid services

Once you are in `apache-druid-27.0.0` root directory you can run the `start-druid` script by running:

```bash
./bin/start-druid
```

Eventhough is recommended to use just a portion of your available system memory. To explicitly set the total memory available to Druid, pass a value for the memory parameter by running instead

```bash
./bin/start-druid -m 16g.
```

After starting the Druid services, open the web console at http://localhost:8888 and this is the UI you will have access:

  ![Druid_UI](img/druid_console.png)


### [Querying data](https://druid.apache.org/docs/latest/tutorials/tutorial-batch/#loading-data-with-a-spec-via-console)

