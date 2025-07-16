---
apiVersion: cloudbees.com/v2025.9
kind: acl
spec:
  inheriting: false
  aclEntries:
    - principalType: user
      principalName: admin
      changePermissionsPrivilege: allow
      executePrivilege: allow
      modifyPrivilege: allow
      readPrivilege: allow
