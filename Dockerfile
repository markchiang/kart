FROM conda/miniconda3
RUN apt-get update && apt-get install -y -q git libboost-all-dev libbz2-dev liblzma-dev cmake g++
RUN git clone https://github.com/hsinnan75/Kart.git && cd Kart && make && mv bin/kart /usr/bin/ && mv bin/bwt_index /usr/bin/
RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge -c bioconda samtools
