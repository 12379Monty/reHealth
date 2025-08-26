#!/bin/bash

css_file=tools/hernia_report_css 

 #########################################
md_folder=reports
md_file=compass_artifact_wf-8b3e071a-b3f3-4502-adb5-d470d3b72709_text_markdown
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
md_folder=documentation
md_file=hernia_report_instructions
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

