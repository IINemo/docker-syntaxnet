SyntaxNet docker container for any language
=========

[Google's SyntaxNet](https://github.com/tensorflow/models/tree/master/syntaxnet) Parser and POS tagger with ability to create a container for any language.

Container can be used with https://github.com/IINemo/syntaxnet_wrapper 

To create container, e.g., for English

`./build.sh inemo/syntaxnet_eng en_US.UTF-8 http://download.tensorflow.org/models/parsey_universal/English.zip`
