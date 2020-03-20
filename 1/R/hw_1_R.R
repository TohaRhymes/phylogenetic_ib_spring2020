library(ape)
library(ggtree)
library(ggplot2)

# 1. reads the file https://www.jasondavies.com/tree-of-life/life.txt 
# to the “tree1” object (directly, or by saving the file outside R);
tree_one <- read.tree("https://www.jasondavies.com/tree-of-life/life.txt")

# 2. draws this tree using the standard function from the ape package;
plot2 <- plot(tree_one,cex = 0.2)

# 3. saves this tree in raster format (png) and vector (svg or pdf);
# SAVED as tree_one.png and tree_one.pdf

# 4. draws this tree unrooted or circular (send pictures hereinafter as desired);
plot(tree_one,type = "unrooted",cex = 0.1)
#saved as tree_one_unrooted.svg

# 5. reads a tree from the text (((A, B), (C, D)), E); to “tree2” object;	
tree_two <- read.tree(text = "(((A,B),(C,D)),E);")

# 6.draws this second tree using the standard function from the ape package 
# and saves 	in raster (png) and vector formats (svg or pdf);
plot(tree_two)
#saved as tree_two.png and tree_two.svg

# 7. draws “tree2” unrooted or circular ;
ggtree(tree_two, layout = "circular") + geom_tiplab(aes(angle=angle),size=10)

# 8. draws “tree1” so that the labels can be read (at least reduce the font);
#Да вроде итак в treee_one.pdf все читается

# 9. draws “tree1” with ggtree with minimal settings;	
ggtree(tree_one, ladderize=FALSE, layout = "circular")+
  geom_tiplab(aes(angle=angle),size=2.5)
# save as tree_one_good.svg
  