# local-variable
### Override Input Variable to Update Local Variable  

This exercise demonstrates how to:

Define an input variable (bucket_prefix)
- Use it in a locals block to create a derived variable (bucket_name)
- Override the input variable at the time of terraform apply
- Create an S3 bucket with the derived name


```
terraform apply -var bucket_prefix='vibinbucket12345'
```

for destroying
 
```
terraform destroy -var bucket_prefix='vibinbucket12345'
```