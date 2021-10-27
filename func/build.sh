func -SPA stdlib.fc wallet-v4-code.fc -o wallet-v4-code.fif
func -SPA stdlib.fc subscription-plugin.fc -o subscription-plugin-code.fif

sed -i '1 ax{FA04} dup @Defop LDEXTRA @Defop LDVARUINT32' wallet-v4-code.fif

fift wallet-v4-code.fif
fift subscription-plugin-code.fif
