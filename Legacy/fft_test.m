s = out.x.signals.values;


L = numel(s);                                           % Signal Length
Fs = 1E+9;                                              % Make Up Sampling Frequency & Units (Hz)
Fn = Fs/2;                                              % Nyquist Frequency
t = out.tcp_osc.time+2;                               % Make Up Time Vector
figure
plot(t, s)
grid
xlabel('Time (s)')                                      % Make Up Frequency Units
ylabel('Amplitude (parsecs)')                           % Make Up Amplitude Units


FTs = fft(s - mean(s))/L;                               % Subtract Mean To See Other Peaks
Fv = linspace(0, 1, fix(L/2)+1)*Fn;                     % Frequency Vector
Iv = 1:numel(Fv);                                       % Index Vector
figure
plot(Fv, abs(FTs(Iv))*2)
grid
xlabel('Frequency (Hz)')
ylabel('Amplitude (parsecs)')