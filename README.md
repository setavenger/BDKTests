
# BDK Tests
This is a simple implementation for a bitcoin multisig wallet. It is used for testing a proper app will be deployed soon<sup>TM</sup>.
Currently the app is testnet only.

## How to use it

This is the format how a xpub/tpub should look:
```[f633291d/84'/1'/0'/0]tpubDFRv1ZiyjayHHiJgzFtf18nTdCC94Ga2hbLXmz77JiHJNvDgRjuEFBHezZGsbWe4o2jiWp5xCSi3mz3Gqdqnqm22Wu8aevGvTuQjg423J3z/*```

### Start up
1. On first startup you will be asked to enter a 12 or 24 word mnemonic phrase or generate a new one.
2. Then you need two other extended public keys (xpub/tpub)
3. Go to the top left in the home screen and click on the three persons button.
   1. Enter the extended public keys
   2. Choose the policy (m of n) for your multisig setup
   3. Go back to the home screen
4. If the xpubs are valid the wallet should be syncing now
   1. Keep in mind that if your wallet has not been used anywhere else the balance should display zero
5. Now you can go to receive
6. Copy the address by pressing and holding on the address displayed
7. Go to a faucet like https://bitcoinfaucet.uo1.net/send.php and add some funds to the wallet

### Sending Funds away
1. Go to `create tx` and scan the QR code displayed to you or enter the address into the address field
2. Enter the amount you want to send (in sats)
3. If you want change the fee rate (for testnet 1 sat/vB should be fine)
4. Generate the PSBT (this will be automatically signed on your part when you generate it)
   1. if you have a 1-of-N wallet then you can skip the steps 6. and 7.
5. Send the PSBT to your peers that have to sign it as well (needs to be done one after another currently separately signed PSBTs can't be combined so: A signs -> B signs the PSBT signed by A -> C signs the PSBT which was signed by both A and B)
6. To sign a PSBT go to `Sign` on the home screen and paste the PSBT into the text field
7. If you are the last one to sign click on `Sign and Broadcast` otherwise click on `Sign` and copy the signed PSBT and send it to the next peer

!WARNING!
The wallet only shows funds that are currently confirmed and in your wallet. Due to UTXO management more funds might be deducted than the transaction amount (+fees). The change from the transaction will be credited back to your account once the transaction is confirmed on-chain.