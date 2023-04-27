## Getting started by Gradle

- Run `gradlew build` (Linux / MacOS: `./gradlew build`) from the project directory.
- Run `gradlew jar` (Linux / MacOS: `./gradlew jar`) from the project directory to create jar which contain admin,services and utils modules
- Run `gradlew war` (Linux / MacOS: `./gradlew war`) from the project directory to create war which contain web,services and utils modules
- Run `gradlew -q changeVersion -PenvDescription=RELEASE` (Linux / MacOS: `./gradlew -q changeVersion -PenvDescription=RELEASE`) from the project directory to
  set project version according to pattern {majorVersion}.{minorVersion}-{envDescription} where environment identifier read from console, in this example, it's
  RELEASE
- Run `gradlew -q changeVersion -PenvDescription=LOCALE` or simple `gradlew -q changeVersion` (Linux /
  MacOS: `./gradlew -q changeVersion -PenvDescription=LOCALE`)
  from the project directory to set project version according to pattern {majorVersion}.{minorVersion}-{envDescription} where environment identifier read from
  console, in this example, it's LOCALE (default)

## Run tests by Gradle

If you want to run tests on your local env, you could use command line:

- Run `gradlew test` from the project directory.

## Getting started by Maven

- Run `mvn clean install` from the project directory.
- Run `mvn --activate-profiles=jar clean package` from the project directory to create jar which contain admin,services and utils modules
- Run `mvn --activate-profiles=war clean package` from the project directory to create war which contain web,services and utils modules

## Run tests by Maven

- Run `mvn test` from the project directory.