# WeakProxyLib

`WeakProxyLib` is a lightweight library for iOS that provides a weak proxy object to help avoid retain cycles in your applications.

## Installation

### CocoaPods

You can install `WeakProxyLib` via CocoaPods. Add the following line to your Podfile:

```ruby
pod 'WeakProxyLib', '~> 0.1.0'
```
Then, run pod install to integrate the library into your Xcode project.

# Usage
## Using Weak Proxy with Timer
Use the proxy as the target for a timer to avoid retain cycles. Here's an example of how to use `WeakProxy` in your view controller:
```swift
import WeakProxyLib

class ViewController: UIViewController {
    private var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize timer with weak proxy target
        let proxy = WeakProxy(target: self)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: proxy, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }

    @objc private func timerAction() {
        // Timer action code
    }

    deinit {
        timer?.invalidate()
        timer = nil
    }
}
```

## Additional Usage Notes

- Ensure proper handling of weak references when using `WeakProxyLib` to prevent retain cycles.
- Customize and adapt the usage according to your application's specific needs.

## Code

For more detailed documentation and advanced usage scenarios, please refer to the [Code](https://github.com/a4amanver15/WeakProxyLib).

## License
`WeakProxyLib` is released under the MIT License. See [LICENSE](./LICENSE) for details.
