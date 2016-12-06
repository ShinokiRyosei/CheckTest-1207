## CheckTest-1207

# Answer
1. Connect `ViewController`'s `@IBOutlet` and `@IBAction` with `ViewController` in `Main.storyboard`.
2. Set `UITextFieldDelegate` as a `ViewController`'s superclass.
3. Call a `textFieldShouldReturn(_ textField: UITextField) -> Bool` method which is included in `UITextFieldDelegate`.
4. Call a `textField.resignFirstResponder()` method in `textFieldShouldReturn(_ textField: UITextField) -> Bool`.
5. Use `if let` statement in order to unwrap `String?` to `String`.

# 答え
1. `ViewController`の`@IBOutlet`と`@IBAction`を関連付け。
2. `ViewController`のスーパクラスとして、`UITextFieldDelegate`を継承させる。
3. `UITextFieldDelegate`の`delegate`メソッドの`textFieldShouldReturn(_ textField: UITextField) -> Bool`を呼び出し
4. `textField(_ textField: UITextField) -> Bool`の中で、`textField.resignFirstResponder()`を呼び出し
5. `if let`文を使って、`String?`を`String`にアンラップ
