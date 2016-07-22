## Developers

### Technical Details

Java 7 and Java 8 for macOS from Oracle both include an AppleScript ScriptEngine
package (apple.applescript) in the runtime JAR (rt.jar) but do not include the
service provider configuration to make it available. The JAR generated from this
project provides only the service provider configuration.

### Distribution

Since a service provider configuration file is only a list of classes to find
and load, the _applescript-1.0.jar_ can be safely included with your application,
but will send a warning message to the standard error output on non-macOS systems,
so if you are providing OS-specific installers, we recommend you include the
_applescript-1.0.jar_ only in the macOS installer.
