library("readxl")
read_excel("test.xlsx") -> all_rats
all_rats[all_rats$group == "Control", ] -> ctrl_group
all_rats[all_rats$group == "Ozone", ] -> ozone_group

median(ctrl_group$weight) -> ctrl_group_median
median(ozone_group$weight) -> ozone_group_median

summary(ctrl_group$weight) -> ctrl_group_quartiles
summary(ozone_group$weight) -> ozone_group_quartiles

IQR(ctrl_group$weight) -> ctrl_group_IQR
IQR(ozone_group$weight) -> ozone_group_IQR

ctrl_group_quartiles[2] - 1.5 * ctrl_group_IQR -> ctrl_group_lower_boundary
ctrl_group_quartiles[5] + 1.5 * ctrl_group_IQR -> ctrl_group_upper_boundary


ctrl_group[ctrl_group$weight <  ctrl_group_lower_boundary, ] -> ctrl_group_low_outliers
ctrl_group[ctrl_group$weight >  ctrl_group_upper_boundary, ] -> ctrl_group_high_outliers

ozone_group_quartiles[2] - 1.5 * ozone_group_IQR -> ozone_group_lower_boundary
ozone_group_quartiles[5] + 1.5 * ozone_group_IQR -> ozone_group_upper_boundary


ozone_group[ozone_group$weight <  ozone_group_lower_boundary, ] -> ozone_group_low_outliers
ozone_group[ozone_group$weight >  ozone_group_upper_boundary, ] -> ozone_group_high_outliers
caption = "Side-by-side boxplot of weight gain for the rats split by group for the rats dataset. 
This plot shows the ozone group has a higher interquartile range 
compared to the control group. There are 2 outliers in the control group."
caption

boxplot(weight~group, data=all_rats, main=caption)
