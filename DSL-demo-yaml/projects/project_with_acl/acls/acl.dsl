---
apiVersion: cloudbees.com/v2025.9
kind: acl
spec:
  inheriting: true
  aclEntries:
    - principalType: user
      principalName: "project: project_with_acl"
      changePermissionsPrivilege: allow
      executePrivilege: allow
      modifyPrivilege: allow
      readPrivilege: allow
    - principalType: user
      principalName: user1
      changePermissionsPrivilege: inherit
      executePrivilege: inherit
      modifyPrivilege: inherit
      readPrivilege: inherit
