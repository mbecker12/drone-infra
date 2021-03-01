# drone-infra

Provide basic infrastructure definitions for the project 'learning-drones'.

The goal is to have a postgres instance running, possibly hosting multiple databases.
These should get backed up regularly with the backups stored in google drive.

Development for this project was done on both minikube and a multi-node cluster set up on an old private laptop with multiple centOS VMs.

# Structure

In the directory postgres, there are all the necessities for the database.
Definitions of a persistent volume and a corresponding claim, the definition of the deployment and service.
The deployment relies on kubernetes secrets which are certainly not uploaded to a public repo ;)

The directory cron contains definitions for the job to backup the database.

In the future, more infrastructure for running the actual drone-learning applications as well as monitoring and workflow managing tools should be implemented.