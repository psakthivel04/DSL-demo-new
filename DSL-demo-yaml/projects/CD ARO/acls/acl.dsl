---
apiVersion: cloudbees.com/v2025.9
kind: acl
spec:
  inheriting: true
  aclEntries:
    - principalType: user
      principalName: "project: CD ARO"
      changePermissionsPrivilege: allow
      executePrivilege: allow
      modifyPrivilege: allow
      readPrivilege: allow
