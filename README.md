# Coach
![hello i am the coach](./coach.jpg "let's get ready to rumble")

_let's get ready to rumble_

## Usage
1. Get yourself [a slack webhook](https://api.slack.com/incoming-webhooks)
2. `./coach.sh https://hook.slack.com/whateveryourwebhookurlis [channel username text emoji]`
3. ???
4. 💪💪💪💪💪💪

## EHOH
You might wanna put this in a crontab, to run every hour, on the hour. Here's some examples:
### Every Hour On the Hour, no exceptions
`0 * * * * /path/to/coach.sh`
### Every Hour On the Hour, reasonable times
`0 10-11,13-16 * * * /path/to/coach.sh`
### Every Hour On the Hour, but like, your server in on UTC, and you're in PDT
`0 17-18,20-23 * * * /path/to/coach.sh`
