#!/bin/bash

./generate.sh $(cat) | sed '2q;d'
