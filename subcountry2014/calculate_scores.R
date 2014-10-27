library(stringr)

# set working directory based on Rscipt execution
args = commandArgs()
wd = dirname(str_replace(args[grep('--file=', args)], '--file=', ''))
setwd(wd)

# load required libraries
suppressWarnings(require(ohicore))

# load scenario configuration
conf = Conf('conf')

# run checks on scenario layers
CheckLayers('layers.csv', 'layers', flds_id=conf$config$layers_id_fields)

# load scenario layers
layers = Layers('layers.csv', 'layers')

# calculate scenario scores
scores = CalculateAll(conf, layers, debug=F)
write.csv(scores, 'scores.csv', na='', row.names=F)
