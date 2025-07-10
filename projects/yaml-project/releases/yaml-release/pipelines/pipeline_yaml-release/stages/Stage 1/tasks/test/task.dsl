
task 'test', {
  command = {% cb_include_as_groovy '../test.cmd' %}
  taskType = 'COMMAND'
}
