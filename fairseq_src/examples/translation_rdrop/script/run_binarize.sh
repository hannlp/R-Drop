#!/usr/bin/env bash

TEXT=/content/iwslt14.tokenized.de-en
fairseq-preprocess --source-lang de --target-lang en \
    --joined-dictionary \
    --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
    --destdir /content/data-bin/iwslt14.rdrop.tokenized.de-en \
    --workers 20
