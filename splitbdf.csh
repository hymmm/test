#!/bin/csh
foreach f ( $* )
  foreach c (`sed -n /nobreakspace/,99999p $f | grep STARTCHAR | awk '{print $2}'`)
    sed -n "/STARTCHAR $c/,/ENDCHAR/p" $f | tail +3 > $c
  end
end
