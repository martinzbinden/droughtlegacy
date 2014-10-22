droughtlegacy
=============
general remarks
---------------
- The use of git AND dropbox in combination should increase the useability and traceability of data in this experiment.
- Git (and Github) is the ideal tool for versioning text files (like metadata, READMEs, R source code, ...), but also o.k. for keeping hand-typed field data (spreadsheet tables, *.csv)
- Dropbox is ideal for storage and history of bigger binary files (pictures, big raw data files)


usage hints:
-----
- *.csv files should always go to Git (also changes in there). 
- Pictures (*.gif, *.jpg, ...) and other binary format files should go to Dropbox. If inside a Git-repository, a .gitignore rule should be added for the files/folders to keep them always out of Git.


contents
--------
```
.
├── data : raw data files
│   ├── meteo : meteo data (*.csv, *.gif)
│   ├── soil : soil probes data (*.csv)
│   └── vegetation: assessments and harvests (*.csv)
├── doc : documentation
│   ├── fieldbooks :  (*.html Tiddlywiki or *.pdf from paper version)
│   ├── meteo : meteo measuring documentation
│   └── soil : soil probing documentation
├── src : scripts and sourcecode
│   ├── experiment1
│   ├── meteo
│   ├── R
│   └── soil
├── results
│   ├── 
│   └── R output files
├── droughtlegacy.Rproj
└── tmp : only for temporary intern use, or not yet categorized
    └── watering_system
```
