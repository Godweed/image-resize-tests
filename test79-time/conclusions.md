# Test 79: time

* The resize operation itself is almost 2.5x slower, but still relatively fast — 1.28s average on my rMBP while I was doing other stuff at the same time

* CPU load is comparable

* The optimization is a beast. All three operations are almost a minute and a half per file — 85.62s.

* CPU load is fairly insane for this too — 144% for ImageOptim (which I think means it was using multiple cores? not really sure)

* My personal opinion is that the resize diff is fine, but the optimization is totally not worth doing synchronously