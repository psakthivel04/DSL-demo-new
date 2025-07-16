import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.ActualParameter
import com.electriccloud.client.groovy.models.PluginParameter

ElectricFlow ef = new ElectricFlow()



def triggerNames = [ui:"Check "+"$[releaseVersion]"+" UI",
					backend: "Check "+"$[releaseVersion]"+" backend"]

def relName = "$[releaseVersion]"
def ltsReleaseVersion = "$[lts_release_version]"
def projName = "$[projectName]"
def branchName = "release-"+ltsReleaseVersion
def triggerProcedureName = "RestartReleaseOnCommit"


def params = [
        new ActualParameter('proj_name', projName),
        new ActualParameter('release_name', relName),
        new ActualParameter('stage_name', "Build"),
        ]         

def backendPluginParams = [
        new PluginParameter('branch', branchName),
        new PluginParameter('config', '/projects/Artemis v2/pluginConfigurations/cloudbees-cd-bot-git'),
        new PluginParameter('forEachTag', "false"),
        new PluginParameter('monitor', "branch"),
        new PluginParameter('repoUrl', "https://github.com/electric-cloud/nimbus"),
        ]         

def uiPluginParams = [
        new PluginParameter('branch', branchName),
        new PluginParameter('config', '/projects/Artemis v2/pluginConfigurations/cloudbees-cd-bot-git'),
        new PluginParameter('forEachTag', "false"),
        new PluginParameter('monitor', "branch"),
        new PluginParameter('repoUrl', "https://github.com/electric-cloud/flow-ui"),
        ]         


def result

ef.getTrigger(projectName: projName,
              triggerName: triggerNames.ui,
              procedureName: triggerProcedureName,
        /*success handler*/ { response, data ->
    println('Found trigger for UI!')
    result = data
},
        /*failure handler*/ { response, data ->
    //assuming pipeline does not exist hence the failure
    println('Creating trigger for UI ...')
          
    result = ef.createTrigger(projectName: projName,
                              triggerName: triggerNames.ui,
                              procedureName: triggerProcedureName,
                              pluginKey: 'EC-Git',
                              triggerType: 'polling',
                              actualParameters: params,
                              pluginParameters: uiPluginParams,
                             )
})


println('Trigger for UI retrieved or created: ' + result?.trigger?.triggerName)

ef.getTrigger(projectName: projName,
              triggerName: triggerNames.backend,
              procedureName: triggerProcedureName,
        /*success handler*/ { response, data ->
    println('Found trigger for backend!')
    result = data
},
        /*failure handler*/ { response, data ->
    //assuming pipeline does not exist hence the failure
    println('Creating trigger for backend ...')
          
    result = ef.createTrigger(projectName: projName,
                              triggerName: triggerNames.backend,
                              procedureName: triggerProcedureName,
                              pluginKey: 'EC-Git',
                              triggerType: 'polling',
                              actualParameters: params,
                              pluginParameters: backendPluginParams,
                             )
})


println('Trigger for backend retrieved or created: ' + result?.trigger?.triggerName)

