%% 1
trnX=yeast_f1_train_feature;
trnY=yeast_f1_train_label;
tstX=yeast_f1_test_feature;
tstY=yeast_f1_test_label;

A = WSRC( trnX' ,trnY' ,tstX' ,0.00005);
K=full(A);
Trainlabels=trnY;
Test=tstX;
Train=trnX;
K=K';


uniqlabels=unique(Trainlabels);
c=max(size(uniqlabels));
for i=1:c
    R=Test-K(:,find(Trainlabels==uniqlabels(i)))*Train(find(Trainlabels==uniqlabels(i)),:);
    src_scores1(:,i)=sqrt(sum(R.*R,2));
end
[maxval1,indices1]=min(src_scores1');
predictions1=uniqlabels(indices1);

accnum=0;
for i=1:size(tstY,1)
    if(tstY(i,1)==predictions1(i,1))
        accnum=accnum+1;
    end
end
acc1=accnum/size(tstY,1)
%% 2
trnX=yeast_f2_train_feature;
trnY=yeast_f2_train_label;
tstX=yeast_f2_test_feature;
tstY=yeast_f2_test_label;

A = WSRC( trnX' ,trnY' ,tstX' ,0.00005);
K=full(A);
Trainlabels=trnY;
Test=tstX;
Train=trnX;
K=K';


uniqlabels=unique(Trainlabels);
c=max(size(uniqlabels));
for i=1:c
    R=Test-K(:,find(Trainlabels==uniqlabels(i)))*Train(find(Trainlabels==uniqlabels(i)),:);
    src_scores2(:,i)=sqrt(sum(R.*R,2));
end
[maxval2,indices2]=min(src_scores2');
predictions2=uniqlabels(indices2);

accnum=0;
for i=1:size(tstY,1)
    if(tstY(i,1)==predictions2(i,1))
        accnum=accnum+1;
    end
end
acc2=accnum/size(tstY,1)
%% 3
trnX=yeast_f3_train_feature;
trnY=yeast_f3_train_label;
tstX=yeast_f3_test_feature;
tstY=yeast_f3_test_label;

A = WSRC( trnX' ,trnY' ,tstX' ,0.00005);
K=full(A);
Trainlabels=trnY;
Test=tstX;
Train=trnX;
K=K';


uniqlabels=unique(Trainlabels);
c=max(size(uniqlabels));
for i=1:c
    R=Test-K(:,find(Trainlabels==uniqlabels(i)))*Train(find(Trainlabels==uniqlabels(i)),:);
    src_scores3(:,i)=sqrt(sum(R.*R,2));
end
[maxval3,indices3]=min(src_scores3');
predictions3=uniqlabels(indices3);

accnum=0;
for i=1:size(tstY,1)
    if(tstY(i,1)==predictions3(i,1))
        accnum=accnum+1;
    end
end
acc3=accnum/size(tstY,1)
%% 4
trnX=yeast_f4_train_feature;
trnY=yeast_f4_train_label;
tstX=yeast_f4_test_feature;
tstY=yeast_f4_test_label;

A = WSRC( trnX' ,trnY' ,tstX' ,0.00005);
K=full(A);
Trainlabels=trnY;
Test=tstX;
Train=trnX;
K=K';


uniqlabels=unique(Trainlabels);
c=max(size(uniqlabels));
for i=1:c
    R=Test-K(:,find(Trainlabels==uniqlabels(i)))*Train(find(Trainlabels==uniqlabels(i)),:);
    src_scores4(:,i)=sqrt(sum(R.*R,2));
end
[maxval4,indices4]=min(src_scores4');
predictions4=uniqlabels(indices4);

accnum=0;
for i=1:size(tstY,1)
    if(tstY(i,1)==predictions4(i,1))
        accnum=accnum+1;
    end
end
acc4=accnum/size(tstY,1)
%% 5
trnX=yeast_f5_train_feature;
trnY=yeast_f5_train_label;
tstX=yeast_f5_test_feature;
tstY=yeast_f5_test_label;

A = WSRC( trnX' ,trnY' ,tstX' ,0.00005);
K=full(A);
Trainlabels=trnY;
Test=tstX;
Train=trnX;
K=K';


uniqlabels=unique(Trainlabels);
c=max(size(uniqlabels));
for i=1:c
    R=Test-K(:,find(Trainlabels==uniqlabels(i)))*Train(find(Trainlabels==uniqlabels(i)),:);
    src_scores5(:,i)=sqrt(sum(R.*R,2));
end
[maxval5,indices5]=min(src_scores5');
predictions5=uniqlabels(indices5);

accnum=0;
for i=1:size(tstY,1)
    if(tstY(i,1)==predictions5(i,1))
        accnum=accnum+1;
    end
end
acc5=accnum/size(tstY,1)