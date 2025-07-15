
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: project_with_acl', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }

  aclEntry 'user', principalName: 'user1', {
    changePermissionsPrivilege = 'inherit'
    executePrivilege = 'inherit'
    modifyPrivilege = 'inherit'
    readPrivilege = 'inherit'
  }
}
