
### Exercice 1
##d'après le théorème de Moivre-Laplace(approximation par la loi normale), environ 95% des echantillon de taille n fournissent une frequence appartenant à l'intervalle 
##donc ^pi=pi+/-1.96*N*racine(p(1-p/n))

install.packages("epiR")
library("epiR")

n_f <- 100*0.28;n_h <- 100*0.22

## l’estimateur π^ de la prévalence pour les femme 
tmp_femme<- matrix(c(n_f, 100) , ncol=2)
epi.conf(tmp_femme, ctype="prevalence", method="exact", N=60000, conf.level=0.95)

## l’estimateur π^ de la prévalence pour les Homme 
tmp_homme<- matrix(c(n_h, 100) , ncol=2)
epi.conf(tmp_homme, ctype="prevalence", method="exact", N=40000, conf.level=0.95)