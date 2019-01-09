#!/bin/sh
CPARG="-cp ../../java-cup-11b-runtime.jar:../../java-cup-11b.jar:../../out/production/Compiler_Project"

HELP=0
VERSION=0
SYNTAXTEST=0
TYPECHECKTEST=0
ASMLTEST=0
ARMTEST=0

for param in "$@"
do
    case $param in
        "-h")
        HELP=1
        ;;
        "-v")
        VERSION=1
        ;;
        "-p")
        SYNTAXTEST=1
        ;;
        "-t")
        TYPECHECKTEST=1
        ;;
        "-asml")
        ASMLTEST=1
        ;;
        "-o")
        ARMTEST=1
        ;;
    esac
done

# S'il y a 0 option de spécifiée on affiche un message et l'aide
TOTAL=`expr $HELP + $VERSION + $SYNTAXTEST + $TYPECHECKTEST + $ASMLTEST + $ARMTEST`
if [ $TOTAL = 0 ]
then
    echo "You have failed to specify what to do correctly."
    HELP=1
fi

if [ $HELP = 1 ]
then
    echo "TODO HELP"
fi

if [ $VERSION = 1 ]
then
    echo "TODO VERSION"
fi

if [ $SYNTAXTEST = 1 ]
then
    ./SyntaxTest.sh
fi

if [ $TYPECHECKTEST = 1 ]
then
    ./TypeCheckTest.sh
fi

if [ $ASMLTEST = 1 ]
then
    ./AsmlTest.sh
fi

if [ $ARMTEST = 1 ]
then
    ./ARMTest.sh
fi
