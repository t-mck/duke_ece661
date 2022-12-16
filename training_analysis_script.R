#
# Base Model
path = "Duke/ECE661/projects/untitled/final_project/saved_models/base_model.pth_training_time_data.csv"
dat = read.csv(path)
#
# Model 1
path1 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_1.pth_training_time_data.csv"
dat1 = read.csv(path1)
#
# Model 2
path2 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_2.pth_training_time_data.csv"
dat2 = read.csv(path2)
#
# Model 3
path3 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_3.pth_training_time_data.csv"
dat3 = read.csv(path3)
#
# Model 4
path4 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_4.pth_training_time_data.csv"
dat4 = read.csv(path4)
#
# Model 5
path5 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_5.pth_training_time_data.csv"
dat5 = read.csv(path5)
#
# Model 6
path6 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_6.pth_training_time_data.csv"
dat6 = read.csv(path6)
#
# Model 7
path7 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_7.pth_training_time_data.csv"
dat7 = read.csv(path7)
#
# Model 8
path8 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_8.pth_training_time_data.csv"
dat8 = read.csv(path8)
#
# Model 9
path9 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_9.pth_training_time_data.csv"
dat9 = read.csv(path9)
#
# Model 10
path10 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_10.pth_training_time_data.csv"
dat10 = read.csv(path10)
#
# Model 11
path11 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_11.pth_training_time_data.csv"
dat11 = read.csv(path11)
#
# Model 12
path12 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_12.pth_training_time_data.csv"
dat12 = read.csv(path12)
#
# Model 13
path13 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_13.pth_training_time_data.csv"
dat13 = read.csv(path13)
#
# Model 14
path14 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_14.pth_training_time_data.csv"
dat14 = read.csv(path14)
#
# Model 15
path15 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_15.pth_training_time_data.csv"
dat15 = read.csv(path15)
#
# Model 16
path16 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_16.pth_training_time_data.csv"
dat16 = read.csv(path16)
#
# Model 17
path17 = "Duke/ECE661/projects/untitled/final_project/saved_models/DoE1_model_17.pth_training_time_data.csv"
dat17 = read.csv(path17)
#
# Plot Accuracy
#
par(mfrow=c(1,2))
plot(x=dat$X, y=dat$Accuracy, ylim=c(0,1), lty = 1, type="l", las=1, main="Training vs Epoch \n Accuracy", xlab = "Epoch", ylab = "Accuracy", col="black")                  #no noise
lines(x=dat1$X, y=dat1$Accuracy, col="dodgerblue2", lty = 1)  #gaussian blur
lines(x=dat2$X, y=dat2$Accuracy, col="firebrick3", lty = 1)     #scale
lines(x=dat3$X, y=dat3$Accuracy, col="chartreuse3", lty = 1)    #salt
lines(x=dat4$X, y=dat4$Accuracy, col="chartreuse3", lty = 4)    #salt
lines(x=dat5$X, y=dat5$Accuracy, col="chocolate4", lty = 1)     #motion blur
lines(x=dat6$X, y=dat6$Accuracy, col="deeppink2", lty = 1)    #random perspective
lines(x=dat7$X, y=dat7$Accuracy, col="darkgoldenrod1", lty = 1)    #coarse-pepper
lines(x=dat8$X, y=dat8$Accuracy, col="darkgoldenrod1", lty = 4)    #coarse-pepper
lines(x=dat9$X, y=dat9$Accuracy, col="darkgoldenrod1", lty = 3)    #coarse-pepper
lines(x=dat10$X, y=dat10$Accuracy, col="chocolate4", lty = 4)   #motion blur
lines(x=dat11$X, y=dat11$Accuracy, col="deeppink2", lty = 4)  #random perspective
lines(x=dat12$X, y=dat12$Accuracy, col="bisque3", lty = 1)      #random resize and crop
lines(x=dat13$X, y=dat13$Accuracy, col="bisque3", lty = 4)      #random resize and crop
lines(x=dat14$X, y=dat14$Accuracy, col="dodgerblue2", lty = 4)  #gaussian blur
lines(x=dat15$X, y=dat15$Accuracy, col="firebrick3", lty = 4)   #scale
lines(x=dat16$X, y=dat16$Accuracy, col="darkorchid4", lty = 1)  #pepper
lines(x=dat17$X, y=dat17$Accuracy, col="darkorchid4", lty = 4)  #pepper

legend("right",
       lty = c(1,1,1,1,4,1,1,1,4,3,4,4,1,4,4,4,1,4),
       lwd = c(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),
       col=c("black", "dodgerblue2", "firebrick3", "chartreuse3", "chartreuse3", "chocolate4", "deeppink2", "darkgoldenrod1","darkgoldenrod1","darkgoldenrod1", "chocolate4", "deeppink2", "bisque3","bisque3", "dodgerblue2", "firebrick3", "darkorchid4", "darkorchid4"),
       legend = c("Base Model (no noise)", "1 (Gaussian Blur)", "2 (Scale)", "3 (Salt)", "4 (Salt)", "5 (Motion Blur)", "6 (Rand. Perspective)", "7 (C. Pepper)", "8 (C. Pepper)", "9 (C. Pepper)", "10 (Motion Blur)", "11 (Rand. Perspective)", "12 (Rand. Resize & Crop)", "13 (Rand Resize & Crop)", "14 (Gaussian Blur)", "15 (Scale)", "16 (Pepper)", "17 (Pepper)"), cex=0.99)

#
# Plot Loss
#
plot(x=dat$X, y=log(dat$Loss), ylim=c(-5,1), lty = 1,type="l", las=1, main="\n log(Loss)", xlab = "Epoch", ylab = "log(Loss)", col="black")
lines(x=dat1$X, y=log(dat1$Loss), col="dodgerblue2", lty = 1)
lines(x=dat2$X, y=log(dat2$Loss), col="firebrick3", lty = 1)
lines(x=dat3$X, y=log(dat3$Loss), col="chartreuse3", lty = 1)
lines(x=dat4$X, y=log(dat4$Loss), col="chartreuse3", lty = 4)
lines(x=dat5$X, y=log(dat5$Loss), col="chocolate4", lty = 1)      #motion blur
lines(x=dat6$X, y=log(dat6$Loss), col="deeppink2", lty = 1) #random perspective
lines(x=dat7$X, y=log(dat7$Loss), col="darkgoldenrod1", lty = 1)    #coarse-pepper
lines(x=dat8$X, y=log(dat8$Loss), col="darkgoldenrod1", lty = 4)    #coarse-pepper
lines(x=dat9$X, y=log(dat9$Loss), col="darkgoldenrod1", lty = 3)    #coarse-pepper
lines(x=dat10$X, y=log(dat10$Loss), col="chocolate4", lty = 4)
lines(x=dat11$X, y=log(dat11$Loss), col="deeppink2", lty = 4)  #will not show up, because the loss exceeds the ylim range greatly
lines(x=dat12$X, y=log(dat12$Loss), col="bisque3", lty = 1)
lines(x=dat13$X, y=log(dat13$Loss), col="bisque3", lty = 4)
lines(x=dat14$X, y=log(dat14$Loss), col="dodgerblue2", lty = 4)
lines(x=dat15$X, y=log(dat15$Loss), col="firebrick3", lty = 4)
lines(x=dat16$X, y=log(dat16$Loss), col="darkorchid4", lty = 1)
lines(x=dat17$X, y=log(dat17$Loss), col="darkorchid4", lty = 4)

legend("bottomleft",
       legend = c("Models using the same noise type have the same color"), cex=0.99)

#
# Regression
#
noise_type = as.factor(c("gaussian-blur", "scale", "salt", "salt", "motion-blur", "random-per",
                         "coarse-pepper", "coarse-pepper", "coarse-pepper",
                         "motion-blur", "random-per", "random-size-c", "random-size-c", "gaussian-blur", "scale",
                         "pepper", "pepper"))
intensity_level = as.integer(c(5,2,3,4,5,2,
                               2,5,3,
                               1,4,3,3,1,4,
                               4,2))
app_freq = as.numeric(c(0.8,0.9,0.2,0.4,0.5,0.4,
                        1.0,0.8,0.6,
                        0.3,0.2,0.9,0.7,0.6,0.7,
                        0.1,0.3))

final_accuracy = as.numeric(c(dat1$Accuracy[200], dat2$Accuracy[200], dat3$Accuracy[200], dat4$Accuracy[200], dat5$Accuracy[200], dat6$Accuracy[200],
                              dat7$Accuracy[200], dat8$Accuracy[200], dat9$Accuracy[200],
                              dat10$Accuracy[200], dat11$Accuracy[200], dat12$Accuracy[200], dat13$Accuracy[200], dat14$Accuracy[200], dat15$Accuracy[200],
                              dat16$Accuracy[200], dat17$Accuracy[200]))

final_log_loss = as.numeric(c(log(dat1$Loss[200]), log(dat2$Loss[200]), log(dat3$Loss[200]), log(dat4$Loss[200]), log(dat5$Loss[200]), log(dat6$Loss[200]),
                              log(dat7$Loss[200]), log(dat8$Loss[200]), log(dat9$Loss[200]),
                              log(dat10$Loss[200]), log(dat11$Loss[200]), log(dat12$Loss[200]), log(dat13$Loss[200]), log(dat14$Loss[200]), log(dat15$Loss[200]),
                              log(dat16$Loss[200]), log(dat17$Loss[200])))
acc_diff = dat$Accuracy[200] - final_accuracy

loss_diff = log(dat$Loss[200]) - final_log_loss

reg_dat = as.data.frame(cbind(noise_type, intensity_level, app_freq, final_accuracy, final_log_loss, acc_diff, loss_diff))

reg_dat

#
# Final Accuracy
#
acc_lm = lm(final_accuracy ~ noise_type + intensity_level + app_freq, reg_dat)
acc_lm = lm(final_accuracy ~ app_freq , reg_dat)
acc_lm = lm(final_accuracy ~ intensity_level , reg_dat)
acc_lm = lm(final_accuracy ~ noise_type , reg_dat)

acc_lm = lm(final_accuracy~ noise_type*app_freq, reg_dat)
#
# Final Log Loss
#
loss_lm = lm(final_log_loss ~ noise_type + intensity_level + app_freq, reg_dat)
loss_lm = lm(final_log_loss ~ noise_type, reg_dat)
loss_lm = lm(final_log_loss ~ intensity_level, reg_dat)
loss_lm = lm(final_log_loss ~ app_freq, reg_dat)

#this model is significant
loss_lm = lm(final_log_loss ~ noise_type*app_freq, reg_dat)
summary(loss_lm)
#the most signficant factor is application frequency


#
# Difference models
#
acc_lm = lm(acc_diff ~ noise_type*intensity_level + intensity_level*app_freq + noise_type*app_freq, reg_dat)
summary(acc_lm)

loss_lm = lm(loss_diff ~ noise_type*intensity_level + intensity_level*app_freq + noise_type*app_freq, reg_dat)
summary(loss_lm)