#!/bin/bash
# Smoke On the Water
# making final table for each paper.

## Wang2017
### make each file have only two columns, the ones from 3 and 4 with the highest value (because I don't have the info about strandness)
tail -n +5 Wang2017/WangHetCDH8A_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetA1.tab
tail -n +5 Wang2017/WangHetCDH8A_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetA2.tab
tail -n +5 Wang2017/WangHetCDH8B_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetB1.tab
tail -n +5 Wang2017/WangHetCDH8B_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetB2.tab
tail -n +5 Wang2017/WangHetCDH8C_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetC1.tab
tail -n +5 Wang2017/WangHetCDH8C_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetC2.tab
tail -n +5 Wang2017/WangHetCDH8D_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetD1.tab
tail -n +5 Wang2017/WangHetCDH8D_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8HetD2.tab
tail -n +5 Wang2017/WangWTCDH8A_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8WTA1.tab
tail -n +5 Wang2017/WangWTCDH8A_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8WTA2.tab
tail -n +5 Wang2017/WangWTCDH8B_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8WTB1.tab
tail -n +5 Wang2017/WangWTCDH8B_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Wang2017/WangCHD8WTB2.tab

join Wang2017/WangCHD8HetA1.tab Wang2017/WangCHD8HetA2.tab >Wang2017/WangHetA.tab
join Wang2017/WangCHD8HetB1.tab Wang2017/WangCHD8HetB2.tab >Wang2017/WangHetB.tab
join Wang2017/WangCHD8HetC1.tab Wang2017/WangCHD8HetC2.tab >Wang2017/WangHetC.tab
join Wang2017/WangCHD8HetD1.tab Wang2017/WangCHD8HetD2.tab >Wang2017/WangHetD.tab
join Wang2017/WangHetA.tab Wang2017/WangHetB.tab >Wang2017/WangA.tab
join Wang2017/WangHetC.tab Wang2017/WangHetD.tab >Wang2017/WangC.tab
join Wang2017/WangA.tab Wang2017/WangC.tab >WangHet.tab
#sed -i '1s/^/Gene\tHet_A1\tHet_A2\tHet_B1\tHet_B2\tHet_C1\tHet_C2\tHet_D1\tHet_D2\n/' WangHet.tab

join Wang2017/WangCHD8WTA1.tab Wang2017/WangCHD8WTA2.tab >Wang2017/WangWTA.tab
join Wang2017/WangCHD8WTB1.tab Wang2017/WangCHD8WTB2.tab >Wang2017/WangWTB.tab
join Wang2017/WangWTA.tab Wang2017/WangWTB.tab >WangWT.tab
#sed -i '1s/^/Gene\tWT_A1\tWT_A2\tWT_B1\tWT_B2\n/' WangWT.tab

join WangHet.tab WangWT.tab >WangAll.tab
sort human_genenames.txt >human_sorted.txt
sort WangAll.tab >Wang_sorted.tab
join human_sorted.txt Wang_sorted.tab >Wang_genenames.txt
sort -k 2 Wang_genenames.txt >Wang_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet_A1\tHet_A2\tHet_B1\tHet_B2\tHet_C1\tHet_C2\tHet_D1\tHet_D2\tWT_A1\tWT_A2\tWT_B1\tWT_B2\n/' Wang_genenames.tab

## Gompers2017
###
tail -n +5 Gompers2017/GompersHetP0.Cdh8_1ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet1.tab
tail -n +5 Gompers2017/GompersHetP0.Cdh8_2ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet2.tab
tail -n +5 Gompers2017/GompersHetP0.Cdh8_3ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet3.tab
tail -n +5 Gompers2017/GompersHetP0.Cdh8_4ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet4.tab
tail -n +5 Gompers2017/GompersHetP0.Cdh8_5ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet5.tab
tail -n +5 Gompers2017/GompersHetP0.Cdh8_6ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersHet6.tab
tail -n +5 Gompers2017/GompersWTP0.Cdh8_1ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersWT1.tab
tail -n +5 Gompers2017/GompersWTP0.Cdh8_2ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersWT2.tab
tail -n +5 Gompers2017/GompersWTP0.Cdh8_3ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersWT3.tab
tail -n +5 Gompers2017/GompersWTP0.Cdh8_4ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersWT4.tab
tail -n +5 Gompers2017/GompersWTP0.Cdh8_5ReadsPerGene.out.tab | awk '{print $1, $2}' >Gompers2017/GompersWT5.tab

join Gompers2017/GompersHet1.tab Gompers2017/GompersHet2.tab >Gompers2017/GompersHetA.tab
join Gompers2017/GompersHet3.tab Gompers2017/GompersHet4.tab >Gompers2017/GompersHetB.tab
join Gompers2017/GompersHet5.tab Gompers2017/GompersHet6.tab >Gompers2017/GompersHetC.tab
join Gompers2017/GompersHetA.tab Gompers2017/GompersHetB.tab >Gompers2017/GompersHetAB.tab
join Gompers2017/GompersHetAB.tab Gompers2017/GompersHetC.tab >GompersHet.tab
#sed -i '1s/^/Gene\tHet1\tHet2\tHet3\tHet4\tHet5\tHet6\n/' GompersHet.tab

join Gompers2017/GompersWT1.tab Gompers2017/GompersWT2.tab >Gompers2017/GompersWTA.tab
join Gompers2017/GompersWT3.tab Gompers2017/GompersWT4.tab >Gompers2017/GompersWTB.tab
join Gompers2017/GompersWT5.tab Gompers2017/GompersWTA.tab >Gompers2017/GompersWTA5.tab
join Gompers2017/GompersWTA5.tab Gompers2017/GompersWTB.tab >GompersWT.tab
#sed -i '1s/^/Gene\tWT1\tWT2\tWT3\tWT4\tWT5\n/' GompersWT.tab

join GompersHet.tab GompersWT.tab >GompersAll.tab
sort mouse_genenames.txt >mouse_sorted.txt
sort GompersAll.tab >Gompers_sorted.tab
join mouse_sorted.txt Gompers_sorted.tab >Gompers_genenames.txt
sort -k 2 Gompers_genenames.txt >Gompers_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tHet4\tHet5\tHet6\tWT1\tWT2\tWT3\tWT4\tWT5\n/' Gompers_genenames.tab

## Platt2017
###
tail -n +5 Platt2017/PlattHetAM_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetAM1.tab
tail -n +5 Platt2017/PlattHetAM_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetAM2.tab
tail -n +5 Platt2017/PlattHetAM_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetAM3.tab
tail -n +5 Platt2017/PlattHetCC_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetCC1.tab
tail -n +5 Platt2017/PlattHetCC_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetCC2.tab
tail -n +5 Platt2017/PlattHetCC_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetCC3.tab
tail -n +5 Platt2017/PlattHetCC_4ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetCC4.tab
tail -n +5 Platt2017/PlattHetDS_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetDS1.tab
tail -n +5 Platt2017/PlattHetDS_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetDS2.tab
tail -n +5 Platt2017/PlattHetDS_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetDS3.tab
tail -n +5 Platt2017/PlattHetHPF_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetHPF1.tab
tail -n +5 Platt2017/PlattHetHPF_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetHPF2.tab
tail -n +5 Platt2017/PlattHetHPF_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetHPF3.tab
tail -n +5 Platt2017/PlattHetLH_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetLH1.tab
tail -n +5 Platt2017/PlattHetLH_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetLH2.tab
tail -n +5 Platt2017/PlattHetLH_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetLH3.tab
tail -n +5 Platt2017/PlattHetLH_4ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetLH4.tab
tail -n +5 Platt2017/PlattHetNAc_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetNAc1.tab
tail -n +5 Platt2017/PlattHetNAc_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetNAc2.tab
tail -n +5 Platt2017/PlattHetNAc_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattHetNAc3.tab

tail -n +5 Platt2017/PlattWTAM_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTAM1.tab
tail -n +5 Platt2017/PlattWTAM_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTAM2.tab
tail -n +5 Platt2017/PlattWTAM_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTAM3.tab
tail -n +5 Platt2017/PlattWTAM_4ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTAM4.tab
tail -n +5 Platt2017/PlattWTCC_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTCC1.tab
tail -n +5 Platt2017/PlattWTCC_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTCC2.tab
tail -n +5 Platt2017/PlattWTCC_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTCC3.tab
tail -n +5 Platt2017/PlattWTDS_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTDS1.tab
tail -n +5 Platt2017/PlattWTDS_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTDS2.tab
tail -n +5 Platt2017/PlattWTDS_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTDS3.tab
tail -n +5 Platt2017/PlattWTDS_4ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTDS4.tab
tail -n +5 Platt2017/PlattWTHPF_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTHPF1.tab
tail -n +5 Platt2017/PlattWTHPF_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTHPF2.tab
tail -n +5 Platt2017/PlattWTHPF_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTHPF3.tab
tail -n +5 Platt2017/PlattWTHPF_4ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTHPF4.tab
tail -n +5 Platt2017/PlattWTLH_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTLH1.tab
tail -n +5 Platt2017/PlattWTLH_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTLH2.tab
tail -n +5 Platt2017/PlattWTLH_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTLH3.tab
tail -n +5 Platt2017/PlattWTNAc_1ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTNAc1.tab
tail -n +5 Platt2017/PlattWTNAc_2ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTNAc2.tab
tail -n +5 Platt2017/PlattWTNAc_3ReadsPerGene.out.tab | awk '{if($3 > $4) print $1, $3; else print $1, $4}' >Platt2017/PlattWTNAc3.tab

join Platt2017/PlattHetAM1.tab Platt2017/PlattHetAM2.tab >Platt2017/PlattHetAMA.tab
join Platt2017/PlattHetAMA.tab Platt2017/PlattHetAM3.tab >PlattHetAM.tab
join Platt2017/PlattWTAM1.tab Platt2017/PlattWTAM2.tab > Platt2017/PlattWTAMA.tab
join Platt2017/PlattWTAM3.tab Platt2017/PlattWTAM4.tab > Platt2017/PlattWTAMB.tab
join Platt2017/PlattWTAMA.tab Platt2017/PlattWTAMB.tab > PlattWTAM.tab
join PlattHetAM.tab PlattWTAM.tab >PlattAMAll.tab
sort PlattAMAll.tab >PlattAMAll_sorted.tab
join mouse_sorted.txt PlattAMAll_sorted.tab >PlattAMAll_genenames.txt
sort -k 2 PlattAMAll_genenames.txt >PlattAMAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tWT1\tWT2\tWT3\n/' PlattAMAll_genenames.tab

join Platt2017/PlattHetCC1.tab Platt2017/PlattHetCC2.tab >Platt2017/PlattHetCCA.tab
join Platt2017/PlattHetCC3.tab Platt2017/PlattHetCC4.tab >Platt2017/PlattHetCCB.tab
join Platt2017/PlattHetCCA.tab Platt2017/PlattHetCCB.tab >PlattHetCC.tab
join Platt2017/PlattWTCC1.tab Platt2017/PlattWTCC2.tab >Platt2017/PlattWTCCA.tab
join Platt2017/PlattWTCCA.tab Platt2017/PlattWTCC3.tab >PlattWTCC.tab
join PlattHetCC.tab PlattWTCC.tab >PlattCCAll.tab
sort PlattCCAll.tab >PlattCCAll_sorted.tab
join mouse_sorted.txt PlattCCAll_sorted.tab >PlattCCAll_genenames.txt
sort -k 2 PlattCCAll_genenames.txt >PlattCCAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tHet4\tWT1\tWT2\tWT3\n/' PlattCCAll_genenames.tab

join Platt2017/PlattHetDS1.tab Platt2017/PlattHetDS2.tab >Platt2017/PlattHetDSA.tab
join Platt2017/PlattHetDSA.tab Platt2017/PlattHetDS3.tab >PlattHetDS.tab
join Platt2017/PlattWTDS1.tab Platt2017/PlattWTDS2.tab >Platt2017/PlattWTDSA.tab
join Platt2017/PlattWTDS3.tab Platt2017/PlattWTDS4.tab >Platt2017/PlattWTDSB.tab
join Platt2017/PlattWTDSA.tab Platt2017/PlattWTDSB.tab >PlattWTDS.tab
join PlattHetDS.tab PlattWTDS.tab >PlattDSAll.tab
sort PlattDSAll.tab >PlattDSAll_sorted.tab
join mouse_sorted.txt PlattDSAll_sorted.tab >PlattDSAll_genenames.txt
sort -k 2 PlattDSAll_genenames.txt >PlattDSAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tWT1\tWT2\tWT3\tWT4\n/' PlattDSAll_genenames.tab

join Platt2017/PlattHetHPF1.tab Platt2017/PlattHetHPF2.tab >Platt2017/PlattHetHPFA.tab
join Platt2017/PlattHetHPFA.tab Platt2017/PlattHetHPF3.tab >PlattHetHPF.tab
join Platt2017/PlattWTHPF1.tab Platt2017/PlattWTHPF2.tab >Platt2017/PlattWTHPFA.tab
join Platt2017/PlattWTHPF3.tab Platt2017/PlattWTHPF4.tab >Platt2017/PlattWTHPFB.tab
join Platt2017/PlattWTHPFA.tab Platt2017/PlattWTHPFB.tab >PlattWTHPF.tab
join PlattHetHPF.tab PlattWTHPF.tab >PlattHPFAll.tab
sort PlattHPFAll.tab >PlattHPFAll_sorted.tab
join mouse_sorted.txt PlattHPFAll_sorted.tab >PlattHPFAll_genenames.txt
sort -k 2 PlattHPFAll_genenames.txt >PlattHPFAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tWT1\tWT2\tWT3\tWT4\n/' PlattHPFAll_genenames.tab

join Platt2017/PlattHetLH1.tab Platt2017/PlattHetLH2.tab >Platt2017/PlattHetLHA.tab
join Platt2017/PlattHetLH3.tab Platt2017/PlattHetLH4.tab >Platt2017/PlattHetLHB.tab
join Platt2017/PlattHetLHA.tab Platt2017/PlattHetLHB.tab >PlattHetLH.tab
join Platt2017/PlattWTLH1.tab Platt2017/PlattWTLH2.tab >Platt2017/PlattWTLHA.tab
join Platt2017/PlattWTLHA.tab Platt2017/PlattWTLH3.tab >PlattWTLH.tab
join PlattHetLH.tab PlattWTLH.tab >PlattLHAll.tab
sort PlattLHAll.tab >PlattLHAll_sorted.tab
join mouse_sorted.txt PlattLHAll_sorted.tab >PlattLHAll_genenames.txt
sort -k 2 PlattLHAll_genenames.txt >PlattLHAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tHet4\tWT1\tWT2\tWT3\n/' PlattLHAll_genenames.tab

join Platt2017/PlattHetNAc1.tab Platt2017/PlattHetNAc2.tab >Platt2017/PlattHetNAcA.tab
join Platt2017/PlattHetNAcA.tab Platt2017/PlattHetNAc3.tab >PlattHetNAc.tab
join Platt2017/PlattWTNAc1.tab Platt2017/PlattWTNAc2.tab >Platt2017/PlattWTNAcA.tab
join Platt2017/PlattWTNAcA.tab Platt2017/PlattWTNAc3.tab >PlattWTNAc.tab
join PlattHetNAc.tab PlattWTNAc.tab >PlattNAcAll.tab
sort PlattNAcAll.tab >PlattNAcAll_sorted.tab
join mouse_sorted.txt PlattNAcAll_sorted.tab >PlattNAcAll_genenames.txt
sort -k 2 PlattNAcAll_genenames.txt >PlattNAcAll_genenames.tab
sed -i '1s/^/GeneID\tGeneName\tHet1\tHet2\tHet3\tWT1\tWT2\tWT3\n/' PlattNAcAll_genenames.tab
