# Ansible Configuration Management

This playbook consolidates the documented target-server configuration workflow.
It installs Docker, enables the service, and runs an Nginx container. The tasks
are declarative and safe to run repeatedly.

```powershell
Copy-Item ansible/inventory.example.ini ansible/inventory.ini
ansible-galaxy collection install -r ansible/requirements.yml
ansible-inventory -i ansible/inventory.ini --list
ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --check
ansible-playbook -i ansible/inventory.ini ansible/playbook.yml
```

Edit the ignored `inventory.ini` with the real host and SSH user. Keep private
keys and credentials outside the repository.
