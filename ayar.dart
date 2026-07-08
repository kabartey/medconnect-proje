import 'dart:io';
void main() {
  var f = File('android/app/build.gradle');
  var s = f.readAsStringSync();
  if(!s.contains('key.properties')) {
    s = s.replaceFirst('android {', "def keystoreProperties = new Properties()\ndef keystorePropertiesFile = rootProject.file('key.properties')\nif (keystorePropertiesFile.exists()) {\n    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))\n}\n\nandroid {");
    s = s.replaceFirst('signingConfigs {', "signingConfigs {\n        release {\n            keyAlias = keystoreProperties['keyAlias']\n            keyPassword = keystoreProperties['keyPassword']\n            storeFile = keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null\n            storePassword = keystoreProperties['storePassword']\n        }");
    s = s.replaceAll('signingConfig signingConfigs.debug', 'signingConfig signingConfigs.release');
    f.writeAsStringSync(s);
  }
}
