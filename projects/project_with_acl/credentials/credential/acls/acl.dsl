
acl {
  inheriting = '0'

  aclEntry 'user', principalName: 'admin', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
