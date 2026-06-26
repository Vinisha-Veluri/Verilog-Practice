Race Condition = Unpredictable Output
Race condition is the cause.

Unpredictable output is the effect.

Simply put
When S=1, R=1 is released to S=0, R=0 —
Both gates are trying to "win" and determine the final state at the same time.
Whichever gate responds even a nanosecond faster → that gate wins → that decides Q.
