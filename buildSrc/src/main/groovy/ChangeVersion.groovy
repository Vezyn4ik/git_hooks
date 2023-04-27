import org.gradle.api.Plugin
import org.gradle.api.Project

class ChangeVersion implements Plugin<Project> {
    @Override
    void apply(Project project) {
        project.task("changeVersion") {
            doLast {
                ant.propertyfile(file: "gradle.properties") {
                    entry(key: "version",
                            value: "${project.findProperty('majorVersion')}.${project.findProperty('minorVersion')}" +
                                    "-${(project.hasProperty("envDescription")) ? project.getProperty('envDescription') : 'LOCAL'}")
                }
            }
        }
    }
}
