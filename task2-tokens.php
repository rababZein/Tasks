<?php
/**
 * 1-Initialize an empty $tokens array to store the token IDs and their expiry times.
 * 2- Track the maximum time $maxT seen in the commands.
 * 3- Loop through the $commands array:
 *      - If the command type is 0 (create token), add the token ID and its expiry time (current time $currentTimeplus $expiryLimit) to the $tokens array.
 *      - If the command type is 1 (reset token), check if the token ID exists in the $tokens array and if the current time $currentTimeis less than or equal to the existing expiry time. 
 *            If so, we update the expiry time to the current time $currentTimeplus $expiryLimit.
 * 4- After processing all the commands, count the number of tokens that are active at the maximum time $maxT. We do this by iterating through the $tokens array and counting the tokens whose expiry time is greater than $maxT.
 * 5- Finally, return the count of active tokens.

 * The time complexity of this solution is O(n), where n is the number of commands
 * The space complexity is also O(n).
 */

function numberOfTokens($expiryLimit, $commandsSize, $commands) {
    $commandItemSize = 3;
    $tokens = [];
    $maxT = 0;

    for ($i = 0; $i < $commandsSize; $i++) {
        $type = $commands[$i][0];
        $token_id = $commands[$i][1];
        $currentTime= $commands[$i][2];

        $maxT = max($maxT, $t);

        if ($type == 0) { // Create token
            $tokens[$token_id] = $currentTime+ $expiryLimit;
        } elseif ($type == 1) { // Reset token
            if (isset($tokens[$token_id]) && $tokens[$token_id] >= $t) {
                $tokens[$token_id] = $currentTime+ $expiryLimit;
            }
        }
    }

    $activeTokens = 0;
    foreach ($tokens as $expiry) {
        if ($expiry > $maxT) {
            $activeTokens++;
        }
    }

    return $activeTokens;
}


?>