#!/bin/bash

testMkrep()
{
  outputDir="${SHUNIT_TMPDIR}/output"
  mkdir "${outputDir}"
  stdoutF="${outputDir}/stdout"
  stderrF="${outputDir}/stderr"

  testCmd='./mkrep.sh'

  ${testCmd} >${stdoutF} 2>${stderrF}
  rtrn=$?
  th_assertTrueWithNoOutput ${rtrn} "${stdoutF}" "${stderrF}"

  assertTrue 'repertoire toto1 absent' "[ -d './toto1' ]"
  assertTrue 'repertoire toto50 absent' "[ -d './toto50' ]"
  assertTrue 'repertoire toto100 absent' "[ -d './toto100' ]"

  rm -rf toto*
}

th_assertTrueWithNoOutput()
{
  th_return_=$1
  th_stdout_=$2
  th_stderr_=$3

  assertFalse 'unexpected output to STDOUT' "[ -s '${th_stdout_}' ]"
  assertFalse 'unexpected output to STDERR' "[ -s '${th_stderr_}' ]"

  unset th_return_ th_stdout_ th_stderr_
}

# Charge et lance shUnit2
. ./tests/shunit2
