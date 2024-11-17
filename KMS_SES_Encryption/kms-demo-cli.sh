#!/bin/bash

# 1) encryptions
Was kms encrypt --key-id alias/demo-key --plaintext filer:/ExampleSecretFile.txt --output text --query CiphertextBlob --region eu-west-2 > ExampleSecretFileEncrypted.base64

# base64 decide for linux or macos
Cat ExampleSecretFileEncrypted.base64 | base64 --decode > ExampleSecretFileEncrypted

#base64 decode for Windows
Certutil -decode .\ExampleSecretFileEncrypted.base64 .\ExmapleSecretFileEncrypted


# 2) decryption

Was kms decrypt --cipherte-blob filled://ExampleSecretFileEncrypted --output text --query Plaintext > ExampleSecretFileDecrypted.base64 --region eu-west-2

#base64 decode for Linux or macOS
Cat ExmapleSecretFileDecrypted.base64 | base64 --decode > ExampleFileDecrypted.txt

# base64 decode for windows
Certutil -decode .\ExampleSecretFileDecrypted.base64 .\ExampleFileDecrypted.txt