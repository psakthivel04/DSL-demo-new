
task 'test-command', {
  command = {% cb_include_as_groovy '../test-command.cmd' %}
  taskType = 'COMMAND'
}
