---
apiVersion: cloudbees.com/v2025.9
kind: project
metadata:
  name: CD ARO
  description: yaml test demo
spec:
  tracked: true
  acl:
    inheriting: true
    aclEntries:
      - principalType: user
        principalName: "project: CD ARO"
        changePermissionsPrivilege: allow
        executePrivilege: allow
        modifyPrivilege: allow
        readPrivilege: allow
