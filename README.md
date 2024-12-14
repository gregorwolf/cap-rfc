# CAP with RFC

## Preperation

If you can reach the ABAP backend system from your network then you can configure the connection details in an `.env` file:

```
cds.requires.SAP_ABAP_BACKEND_RFC.credentials={"ashost": "<fqdn>","client": "001","sysnr": "00",  "user": "<username>",  "passwd": "<password>"}
```

You have to define a user for the [Repository-Based Shipment Channel](https://ui.repositories.cloud.sap/www/webapp/users) and set it by running:

```bash
export SAP_NPM_AUTH="<NPM Base64 Credentials>"
```
