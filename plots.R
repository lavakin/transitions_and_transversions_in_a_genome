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
  x = c('~/Documents/school/unix2/charts/', file_name, '.png')
  name = paste(x, collapse = "")
  print(name)
  ggsave(name, pie, device = "png")
  
}

data = read.delim("~/Documents/school/unix2/nucleotides.txt", header = TRUE, sep = "\t", dec = ".")
make_plot(data$nucleotide, data$transitions, "Number of transitions by nucleotides", "transition_nucl")
make_plot(data$nucleotide, data$transversions, "Number of transversions by nucleotides", "transversion_nucl")

data2 = read.delim("~/Documents/school/unix2/transp_nucleotides.txt", header = TRUE, sep = "\t", dec = ".")
make_plot(data2$nucleotide,data2$A, "Ratio between transitions and transversions adenin", "adenin")
make_plot(data2$nucleotide,data2$G, "Ratio between transitions and transversions guanin", "guanin")
make_plot(data2$nucleotide,data2$C, "Ratio between transitions and transversions cytosine", "cytosine")
make_plot(data2$nucleotide,data2$T, "Ratio between transitions and transversions thymine", "thymine")

data3 = read.delim("~/Documents/school/unix2/summary.txt", header = FALSE, sep = "\t", dec = ".")
make_plot(data3$V1, data3$V2, "Ratio between transitions and transversions", "tri_vs_tre")


