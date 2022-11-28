#!/bin/bash
for i in *.kicad_pcb; do git rev-parse --short HEAD | xargs -I % sed -i 's/{GITHASH}/%/g' $i; done
kikit panelize --layout 'grid; rows: 3; cols: 2; vspace: 3mm; hspace: 5mm' --source 'tolerance: 15mm' --tabs annotation --cuts 'mousebites; drill: 0.5mm; spacing: 1mm; offset: -0.2mm; prolong: 1.0mm' --framing 'railstb; width: 8mm; space: 3mm; fillet: 1mm' --post 'millradius: 1mm' --fiducials '4fid; hoffset: 5mm; voffset: 2.5mm; coppersize: 1mm; opening: 3mm;' rs-probe.kicad_pcb panel.kicad_pcb