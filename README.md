# Google cloud API enabler 

You need to have [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com) enabled prior to running this.

# List the enabled ones to start with

```bash
gcloud services list --enabled \                                   
      --format="table[box,margin=3,title='✨ Enabled Services ✨'](config.title,state)" --project <project>
```

List the services we can enable

```bash
```