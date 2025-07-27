#!/bin/bash

css_file=tools/style.css

 #########################################
md_folder=reports
md_file=lower_leg_circulation_report
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    output_yaml = '_site.yml',
    params=list(css='$css_file'))" > $md_file_path.log

 
 #########################################
md_folder=reports
md_file=vitamin_b12_report
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 #########################################
md_folder=reports
md_file=venous_insufficiency_treatment
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log


 #########################################
md_folder=tracking
md_file=self_care_checklist
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 
 #########################################
md_folder=tracking
md_file=symptom_tracker
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 
 #########################################
md_folder=tools
md_file=markdown_rendering_instructions
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 
 
 #########################################
md_folder=documentation
md_file=change_log
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 
 #########################################
md_folder=documentation
md_file=artifacts_download_guide
md_file_path=$md_folder/$md_file

echo  ''
echo  ''
echo md_file_path = $md_file_path
Rscript -e   \
   "rmarkdown::render('$md_file_path.md',
    output_format = rmarkdown::html_document(),
    output_file='$md_file.html',
    params=list(css='$css_file'))" > $md_file_path.log

 
