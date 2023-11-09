function [Stim1P1, Stim1P2, Stim2P1, Stim2P2, Stim3P1, Stim3P2] = NS_stimVars(f)
    Stim1P1(1:150000,1) = ns_read_waveform_data(f.Trials{1}.AcquisitionData{1});
    Stim1P1(1:150000,2) = ns_read_waveform_data(f.Trials{2}.AcquisitionData{1});
    Stim1P1(1:150000,3) = ns_read_waveform_data(f.Trials{3}.AcquisitionData{1});
    Stim1P1(1:150000,4) = ns_read_waveform_data(f.Trials{4}.AcquisitionData{1});
    Stim1P1(1:150000,5) = ns_read_waveform_data(f.Trials{5}.AcquisitionData{1});
    Stim1P1(1:150000,6) = ns_read_waveform_data(f.Trials{6}.AcquisitionData{1});
    Stim1P1(1:150000,7) = ns_read_waveform_data(f.Trials{7}.AcquisitionData{1});
    Stim1P1(1:150000,8) = ns_read_waveform_data(f.Trials{8}.AcquisitionData{1});
    Stim1P1(1:150000,9) = ns_read_waveform_data(f.Trials{9}.AcquisitionData{1});
    Stim1P1(1:150000,10) = ns_read_waveform_data(f.Trials{10}.AcquisitionData{1});
    
    Stim2P1(1:150000,1) = ns_read_waveform_data(f.Trials{11}.AcquisitionData{1});
    Stim2P1(1:150000,2) = ns_read_waveform_data(f.Trials{12}.AcquisitionData{1});
    Stim2P1(1:150000,3) = ns_read_waveform_data(f.Trials{13}.AcquisitionData{1});
    Stim2P1(1:150000,4) = ns_read_waveform_data(f.Trials{14}.AcquisitionData{1});
    Stim2P1(1:150000,5) = ns_read_waveform_data(f.Trials{15}.AcquisitionData{1});
    Stim2P1(1:150000,6) = ns_read_waveform_data(f.Trials{16}.AcquisitionData{1});
    Stim2P1(1:150000,7) = ns_read_waveform_data(f.Trials{17}.AcquisitionData{1});
    Stim2P1(1:150000,8) = ns_read_waveform_data(f.Trials{18}.AcquisitionData{1});
    Stim2P1(1:150000,9) = ns_read_waveform_data(f.Trials{19}.AcquisitionData{1});
    Stim2P1(1:150000,10) = ns_read_waveform_data(f.Trials{20}.AcquisitionData{1});
    
    Stim3P1(1:150000,1) = ns_read_waveform_data(f.Trials{21}.AcquisitionData{1});
    Stim3P1(1:150000,2) = ns_read_waveform_data(f.Trials{22}.AcquisitionData{1});
    Stim3P1(1:150000,3) = ns_read_waveform_data(f.Trials{23}.AcquisitionData{1});
    Stim3P1(1:150000,4) = ns_read_waveform_data(f.Trials{24}.AcquisitionData{1});
    Stim3P1(1:150000,5) = ns_read_waveform_data(f.Trials{25}.AcquisitionData{1});
    Stim3P1(1:150000,6) = ns_read_waveform_data(f.Trials{26}.AcquisitionData{1});
    Stim3P1(1:150000,7) = ns_read_waveform_data(f.Trials{27}.AcquisitionData{1});
    Stim3P1(1:150000,8) = ns_read_waveform_data(f.Trials{28}.AcquisitionData{1});
    Stim3P1(1:150000,9) = ns_read_waveform_data(f.Trials{29}.AcquisitionData{1});
    Stim3P1(1:150000,10) = ns_read_waveform_data(f.Trials{30}.AcquisitionData{1});
    
    Stim1P2(1:150000,1) = ns_read_waveform_data(f.Trials{31}.AcquisitionData{1});
    Stim1P2(1:150000,2) = ns_read_waveform_data(f.Trials{32}.AcquisitionData{1});
    Stim1P2(1:150000,3) = ns_read_waveform_data(f.Trials{33}.AcquisitionData{1});
    Stim1P2(1:150000,4) = ns_read_waveform_data(f.Trials{34}.AcquisitionData{1});
    Stim1P2(1:150000,5) = ns_read_waveform_data(f.Trials{35}.AcquisitionData{1});
    Stim1P2(1:150000,6) = ns_read_waveform_data(f.Trials{36}.AcquisitionData{1});
    Stim1P2(1:150000,7) = ns_read_waveform_data(f.Trials{37}.AcquisitionData{1});
    Stim1P2(1:150000,8) = ns_read_waveform_data(f.Trials{38}.AcquisitionData{1});
    Stim1P2(1:150000,9) = ns_read_waveform_data(f.Trials{39}.AcquisitionData{1});
    Stim1P2(1:150000,10) = ns_read_waveform_data(f.Trials{40}.AcquisitionData{1});
    
    Stim2P2(1:150000,1) = ns_read_waveform_data(f.Trials{41}.AcquisitionData{1});
    Stim2P2(1:150000,2) = ns_read_waveform_data(f.Trials{42}.AcquisitionData{1});
    Stim2P2(1:150000,3) = ns_read_waveform_data(f.Trials{43}.AcquisitionData{1});
    Stim2P2(1:150000,4) = ns_read_waveform_data(f.Trials{44}.AcquisitionData{1});
    Stim2P2(1:150000,5) = ns_read_waveform_data(f.Trials{45}.AcquisitionData{1});
    Stim2P2(1:150000,6) = ns_read_waveform_data(f.Trials{46}.AcquisitionData{1});
    Stim2P2(1:150000,7) = ns_read_waveform_data(f.Trials{47}.AcquisitionData{1});
    Stim2P2(1:150000,8) = ns_read_waveform_data(f.Trials{48}.AcquisitionData{1});
    Stim2P2(1:150000,9) = ns_read_waveform_data(f.Trials{49}.AcquisitionData{1});
    Stim2P2(1:150000,10) = ns_read_waveform_data(f.Trials{50}.AcquisitionData{1});
    
    Stim3P2(1:150000,1) = ns_read_waveform_data(f.Trials{51}.AcquisitionData{1});
    Stim3P2(1:150000,2) = ns_read_waveform_data(f.Trials{52}.AcquisitionData{1});
    Stim3P2(1:150000,3) = ns_read_waveform_data(f.Trials{53}.AcquisitionData{1});
    Stim3P2(1:150000,4) = ns_read_waveform_data(f.Trials{54}.AcquisitionData{1});
    Stim3P2(1:150000,5) = ns_read_waveform_data(f.Trials{55}.AcquisitionData{1});
    Stim3P2(1:150000,6) = ns_read_waveform_data(f.Trials{56}.AcquisitionData{1});
    Stim3P2(1:150000,7) = ns_read_waveform_data(f.Trials{57}.AcquisitionData{1});
    Stim3P2(1:150000,8) = ns_read_waveform_data(f.Trials{58}.AcquisitionData{1});
    Stim3P2(1:150000,9) = ns_read_waveform_data(f.Trials{59}.AcquisitionData{1});
    Stim3P2(1:150000,10) = ns_read_waveform_data(f.Trials{60}.AcquisitionData{1});
end