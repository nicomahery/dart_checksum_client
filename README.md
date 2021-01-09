# Checksum calculation tool built with dart 
## Prerequisite
Dart SDK installed on the computer and added to the PATH variable of the system. 
## How to use it from source
Every command are ran from the root directory of the project.
### Calculate the checksum of a file
In order to calculate the checksum of a file, use this command: 

`dart run bin/dart_checksum_client.dart <path>`

### Calculate the checksum of every file in a directory
In order to calculate the checksum of a file, use this command: 

`dart run bin/dart_checksum_client.dart --directory <path>`

##Global options

| Option         | Usage                                                        |
|----------------|:------------------------------------------------------------:|
| --help         | Print the usage information.                                 |
| --directory    | Calculate the checksum for every file in the given directory |

