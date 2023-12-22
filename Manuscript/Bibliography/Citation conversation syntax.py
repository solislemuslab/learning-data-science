# creating code to convert bibtex citations to markdown citations

import os

# def convert_bibtex_to_markdown(bibtex):
#     # Your conversion logic here
#     # ...
#     markdown = bibtex.replace('@', '> ')
#     return markdown

# # Example usage
# bibtex_citation = "@article{Smith2021, title={Interactive Visualizations to Introduce Data Science for High School Students.}, + \
#     author={Chittora, Siddharth, and Anna Baynes}, journal={Journal of Examples}, year={Proceedings of the 21st Annual Conference on Information Technology Education}}" + \
#         "volume={.}, number={.}, pages={236–241}, year={2020}, publisher={Association for Computing Machinery}, doi={10.1145/3368308.3415360},  + \
#         url={https://dl.acm.org/doi/10.1145/3368308.3415360}"
# markdown_citation = convert_bibtex_to_markdown(bibtex_citation)

!pandoc references.bib -s -f biblatex -t markdown  -o references.md