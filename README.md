# autoAccept
A League of Legends auto queue accept script

This is a handy tool that will automatically accept the queue for you if you are away from your desk. This is especially handy if you are watching a video and have the League client on another monitor and cant be bothered to move the mouse. The script will automatically close itself when you close out of the League Client.

The script is currently configured to the new beta client but the code for the old client is still in the script commented out.

If you wish the LeagueofLogin script to automtically run this program make sure the script is in the same directory and uncomment line 430 which says:

```autoit
_FoolProofStart(@ScriptDir & "\autoAccept.exe")
```