#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
library("ggplot2")

make_plot <- function(indexes,vals, texxt, file_name) {
  trans = data.frame(indexes, vals)
  piepercent<- round(100*vals/sum(vals), 1)
  pie = ggplot(trans, aes(x="", y=piepercent, fill=indexes)) + geom_bar(stat="identity", width=1)
  pie = pie + coord_polar("y", start=0)
  pie = pie + scale_fill_manual(values=c("#55DDE0", "#33658A", "#2F4858", "#F6AE2D", "#F26419", "#999999")) 
  pie = pie + labs(x = NULL, y = NULL, fill = NULL, title = texxt)
  pie = pie + theme_classic() + theme(axis.line = element_blank(),
                                      axis.ticks = element_blank(),
                                      plot.title = element_text(hjust = 0.5, color = "#666666"))
  pie
  x = c(args[1], '/charts/', file_name, '.png')
  name = paste(x, collapse = "")
  print(name)
  ggsave(name, pie, device = "png",width = 6, height = 6)
  
}
x = c(args[1], '/results/nucleotides.txt')
ffile = paste(x, collapse = "")
data = read.delim(ffile, header = TRUE, sep = "\t", dec = ".")
make_plot(data$nucleotide, data$transitions, "Number of transitions by nucleotides", "transition_nucl")
make_plot(data$nucleotide, data$transversions, "Number of transversions by nucleotides", "transversion_nucl")

x = c(args[1], '/results/transp_nucleotides.txt')
ffile = paste(x, collapse = "")
data2 = read.delim(ffile, header = TRUE, sep = "\t", dec = ".")
make_plot(data2$nucleotide,data2$A, "Ratio between transitions and transversions adenin", "adenin")
make_plot(data2$nucleotide,data2$G, "Ratio between transitions and transversions guanin", "guanin")
make_plot(data2$nucleotide,data2$C, "Ratio between transitions and transversions cytosine", "cytosine")
make_plot(data2$nucleotide,data2$T, "Ratio between transitions and transversions thymine", "thymine")

x = c(args[1], '/results/summary.txt')
ffile = paste(x, collapse = "")
data3 = read.delim(ffile, header = FALSE, sep = "\t", dec = ".")
make_plot(data3$V1, data3$V2, "Ratio between transitions and transversions", "tri_vs_tre")


