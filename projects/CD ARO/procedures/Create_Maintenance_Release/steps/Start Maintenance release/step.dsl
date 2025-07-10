
step 'Start Maintenance release', {
  command = {% cb_include_as_groovy '../Start Maintenance release.groovy' %}
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
