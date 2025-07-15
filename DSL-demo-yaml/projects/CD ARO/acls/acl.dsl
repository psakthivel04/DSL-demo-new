
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: CD ARO', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
