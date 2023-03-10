> **Note**
> The EBI Cloud Portal has been retired and its code base is no longer updated. If you would like to contact the Cloud Portal authors, please leave us feedback via [the EBI contact form](https://www.ebi.ac.uk/about/contact/support/other) mentioning the EBI Cloud Portal in the Subject.

# cpa-template

A simple way to create a new application for the
[EMBL-EBI Cloud Portal](https://portal.tsi.ebi.ac.uk) (`ECP`).


## How to use

1.  Edit the `config.yaml` file with the values for your application.
2.  Add or modify the templates in the `template` folder using
[`Jinja2`](http://jinja.pocoo.org/docs/) syntax.
3.  Execute the script`run.sh` to generate the `ECP` application:

```
./run.sh
```

### Done!

The `ECP` application code will be available in the `ecp` folder.

To use your new application you just need to:

1.  add the content of the `ecp` folder to a **git repository** (or create a new one)
2.  feed the `ECP` with the **URL** of your **git repository**, using the (`+`) button in the [`Application repository`](https://portal.tsi.ebi.ac.uk/repository) section.

---

### Requirements:

-   `Jinja2` template code generator ([yasha]([https://github.com/kblomqvist/yasha)).

```
pip install yasha
```

-   `rsync`.

RedHat, CentOS:

```
sudo yum install rsync -y
```

Debian, Ubuntu:

```
sudo apt install rsync -y
```
