#! /usr/bin/env make
# Assignment 6, Tong Ru, Mar 7 2023

Assignment6:preparation finalReport.md finalReport.html

preparation:
	unzip ScientificComputationAssignment67-master.zip
	cat ScientificComputationAssignment67-master/ViEWSMapGridCell.png > ViEWSMapGridCell.png

finalReport.md:
	cat ScientificComputationAssignment67-master/preamble.txt > 1_preamble.md
	cat ScientificComputationAssignment67-master/litReview.txt > 2_litReview.md
	cat ScientificComputationAssignment67-master/approach.txt > 3_approach.md
	cat ScientificComputationAssignment67-master/results.txt > 4_results.md
	cat ScientificComputationAssignment67-master/conclusion.txt > 5_conclusion.md
	(cat 1_preamble.md; echo ""; cat 2_litReview.md; echo ""; cat 3_approach.md; echo ""; cat 4_results.md; echo ""; cat 5_conclusion.md; echo ) > finalReport.md

finalReport.html: finalReport.md
	pandoc finalReport.md -s --mathjax -f markdown+tex_math_dollars -t html -o finalReport.html
