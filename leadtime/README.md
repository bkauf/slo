# leadtime Cloud Builder
This cloud builder for Google Cloud Build takes 3 arguments to calculate the leadtime and determine if the build is a rollback.
It currently will only work on a public github repo:

- args[1]; //Commit Repo(ex: bkauf/slo)
- args[2]; //Commit SHA
- args[3]; //Time of code commit

It will output entries in stdout like the following after it runs

`Commit: 050a3bb4220e115aa963a3c8079c8bbb5b0de305 || Rollback: True || LeadTime: 2989.72`
