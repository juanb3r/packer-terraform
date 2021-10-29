# Terraform practia
## _Usando terraform y packer para creacion de recursos en AWS_

[![N|Solid](https://www.aplyca.com/sites/default/files/gbb-uploads/Terraform_PrimaryLogo_FullColor-yny0tn.png)](https://www.terraform.io/)


Este repositorio es solo para practica, en el encontras los siguientes archivos

- aws-ami.json - Archivo para la creación de una AMI en nuestra cuenta de AWS
- main.tf - Archivo que contiene el provider (AWS) y los recursos a desplegar en nuestra cuenta.

> NOTA: Reemplazar llave pública por llave pública propia, dado que esta será usada para la conexión de nuestra instancia.

## Despliegue

```sh
packer build aws-ami.json
terraform apply
```