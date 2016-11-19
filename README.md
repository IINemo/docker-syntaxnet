Syntaxnet for Russian
=========

[Google's SyntaxNet](https://github.com/tensorflow/models/tree/master/syntaxnet) Parser and POS tagger with Russian model.


Usage
-----

```shell
echo "мама мыла раму" | docker run --rm -i inemo/syntaxnet_rus
...
Input: Name this boat
Parse (CONLL format):
1       мама    _       NOUN    _       Animacy=Anim|Case=Nom|Gender=Fem|Number=Sing|fPOS=NOUN++        2       nsubj   _       _
2       мыла    _       VERB    _       Aspect=Imp|Gender=Fem|Mood=Ind|Number=Sing|Tense=Past|VerbForm=Fin|Voice=Act|fPOS=VERB++        0  ROOT     _       _
3       раму    _       NOUN    _       Animacy=Inan|Case=Acc|Gender=Fem|Number=Sing|fPOS=NOUN++        2       dobj    _       _

```


Updating
--------

```
docker login
docker build -t inenmo/syntaxnet_rus --no-cache . && docker push inemo/syntaxnet_rus

```

