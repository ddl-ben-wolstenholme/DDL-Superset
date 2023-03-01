# DDL-Superset

Before using Superset environments with Domino you must ensure that this functionality is properly configured on your deployment.
Here is a list of items to know:

* You must know the workspace properties Superset supports.
These are in the YAML file that creates the Superset environment.

* You must configure your deployment to support subdomains. Contact your Domino representative for information on configuring your deployment to support subdomains.

* All of your data connectors do not persist after closing your workspace. You must reconnect your data connectors prior to opening your workspace.


## Create a Superset environment

* ### Base image
    Select the **Custom Image** option and enter an image URI that points to a deployable Superset environment image.
    Domino currently recommendeds `quay.io/domino/compute-environment-images:ubuntu20-py3.9-superset1.5.0-domino5.2`

* ### Pluggable Workspace Tools
    ```yaml
    superset:
    title: "Superset"
    iconUrl: "https://superset.apache.org/img/superset-logo-horiz-apache.svg"
    start: [ "/var/opt/domino/workspaces/superset/start" ]
    httpProxy:
        port: 8088
        rewrite: false
        requireSubdomain: true
    ```

NOTE: `requireSubdomain` must be set to `true`.

To learn more about using Superset environments, see [Superset Introduction](https://superset.apache.org/docs/intro)