load('./data/N_proteinA.mat')
load('./data/N_proteinB.mat')
load('./data/P_proteinA.mat')
load('./data/P_proteinB.mat')
load('./data/SM_BLOSUM62.mat')
alfabeto=['A' 'R' 'N' 'D' 'C' 'Q' 'E' 'G' 'H' 'I' 'L' 'K' 'M' 'F' 'P' 'S' 'T' 'W' 'Y' 'V' 'X'];
N_A_feature=[];
N_B_feature=[];
P_A_feature=[];
P_B_feature=[];

for i=1:size(proteinA)
    i;
    SEQ=proteinA(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,SM_BLOSUM62);
    S=loop(P);
    S=S';
    S=S(1,:);
    N_A_feature(i,:)=S(:);
end

for i=1:size(proteinB)
    i;
    SEQ=proteinA(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,SM_BLOSUM62);
    S=loop(P);
    S=S';
    S=S(1,:);
    N_B_feature(i,:)=S(:);
end

for i=1:size(P_proteinA)
    i;
    SEQ=P_proteinA(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,SM_BLOSUM62);
    S=loop(P)
    S=S';
    S=S(1,:);
    P_A_feature(i,:)=S(:);
end

for i=1:size(P_proteinB)
    i;
    SEQ=P_proteinB(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,SM_BLOSUM62);
    S=loop(P);
    S=S';
    S=S(1,:);
    P_B_feature(i,:)=S(:);
end

