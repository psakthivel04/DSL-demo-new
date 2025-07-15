import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.ActualParameter
import com.electriccloud.client.groovy.models.PluginParameter

ElectricFlow ef = new ElectricFlow()

def jiraFixVersion = "$[jira_fix_version]"
def schedName = "Sync " + jiraFixVersion + " jiras"
def relName = "$[releaseVersion]"
def projName = "$[projectName]"
def startDate = "$[start_date]"


def params = [
        new ActualParameter('jira_fix_version', jiraFixVersion),
        new ActualParameter('proj_name', projName),
        new ActualParameter('release_name', relName),
        ]
        
def result = ef.createSchedule(scheduleName: schedName,
				projectName: 'RCC',
				procedureName: 'sync_release_jiras',
                interval: '30',
                intervalUnits: 'minutes',
                beginDate: startDate,
                actualParameters: params)
                
                
println "Schedule created " + result