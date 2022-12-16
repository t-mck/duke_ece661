#
# load test data
test_data_path = "Duke/ECE661/projects/untitled/final_project/test_data.csv"
tdat = read.csv(test_data_path)
tdat$Test_noise_Type = as.factor(tdat$Test_noise_Type)
tdat$Modle_Noise_Type = as.factor(tdat$Modle_Noise_Type)

#set no noise as the reference level
tdat$Modle_Noise_Type = relevel(tdat$Modle_Noise_Type, 4)
levels(tdat$Modle_Noise_Type)

Modle_Noise_Type + App_freq + Modle_Noise_Intensity
#
# Gaussian Blur
#
gb_test_lm = lm(X3 ~  Modle_Noise_Type, tdat[tdat$Test_noise_Type == "gaussian-blur",])
summary(gb_test_lm)
# drop intensity
# dropped application frequency, not signficant
# Signficant factors:
# Modle_Noise_Typegaussian-blur           0.385183   0.075059   5.132 0.000618 ***
# Modle_Noise_Typerandom-resize-and-crop  0.218283   0.075059   2.908 0.017363 *

#
# Salt
#
salt_test_lm = lm(X3 ~  Modle_Noise_Type , tdat[tdat$Test_noise_Type == "salt",])
summary(salt_test_lm )
#
# Scale
#
scale_test_lm = lm(X3 ~  Modle_Noise_Type , tdat[tdat$Test_noise_Type == "scale",])
summary(scale_test_lm )
#
# Motion Blur
#
mb_test_lm = lm(X3 ~  Modle_Noise_Type, tdat[tdat$Test_noise_Type == "motion-blur",])
summary(mb_test_lm )

Modle_Noise_Type + App_freq + Modle_Noise_Intensity
#
# Random Perspective
#
rp_test_lm = lm(X3 ~  Modle_Noise_Type , tdat[tdat$Test_noise_Type == "random-perspective",])
summary(rp_test_lm )
#
# Coarse Pepper
#
cp_test_lm = lm(X3 ~  Modle_Noise_Type , tdat[tdat$Test_noise_Type == "coarse-pepper",])
summary(cp_test_lm )
#
# Pepper
#
pepper_test_lm = lm(X3 ~  Modle_Noise_Type, tdat[tdat$Test_noise_Type == "pepper",])
summary(pepper_test_lm )
#
# Random Resize and Crop
#
rrc_test_lm = lm(X3 ~  Modle_Noise_Type, tdat[tdat$Test_noise_Type == "random-resized-crop",])
summary(rrc_test_lm )