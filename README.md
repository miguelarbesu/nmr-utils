# nmr_utils

Collection of useful shell scripts for dealing with NMR datasets acquired with Topspin.

---

## Index

- `get_exptitles.sh`

Output in order all `exp` numbers and `title` contents in a Bruker data set
folder to a single Markdown list.

- `estimate-noise_tr4D-pipe.sh`

Estimate noise from a NMRPipe-formatted pseudo-4D spectrum, stored as folders
containing 3D spectra, each of them a collection of 2D planes
(`./ft%d/test03%d.dat`).

Takes the relative path to the experiment folder as the argument, and writes
a `noise.list` file in it.

Uses the `specstat.com` utility from nmrPipe. More details about the tool
[here](https://spin.niddk.nih.gov/NMRPipe/newdocs/ref/#nmrwish_fn) and
[here](https://research.cbc.osu.edu/foster.281/2018/05/03/delaglios-tips-for-measuring-noise-in-nmrpipe/).

- `/window-functions_nmrpipe_topspin.ipynb`

A notebook exploring how the sine bell window functions are implemented in nmrPipe and Topspin.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/miguelarbesu/nmr-utils/master?filepath=window-functions_nmrpipe_topspin.ipynb)