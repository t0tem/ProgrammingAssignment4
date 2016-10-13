
## tidy1

### subjcode
    merged codes of the subjects from 
    "Dataset/train/subject_train.txt" and 
    "Dataset/test/subject_test.txt"

### actlabel
    activity codes from 
    "Dataset/train/y_train.txt" and 
    "Dataset/test/y_test.txt" then
    joined by code with labels from "Dataset/activity_labels.txt"
    
### variables from 3rd to 81st
    are subset from the total list of variables listed in 
    "Dataset/features.txt"
    by matching to regex "mean|std"
    
    check "Dataset/features_info.txt" for more info on features
    
#### each combination of subject-activity contains from 36 to 95 observations
#### depending on the number of measurements done
    
## tidy2

### variables list fully corresponds to tidy1
#### the difference is that each combination of subject-activity contain only 
#### 1 observation which is the mean of initial values of corresponding variable 
#### of tidy1