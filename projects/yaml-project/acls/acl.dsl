
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: yaml-project', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
