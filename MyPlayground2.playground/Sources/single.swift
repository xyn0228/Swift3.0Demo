import Foundation

public class GameManager {
    public var score = 0
    public static let defaultGameManager = GameManager()  //这就是swift中的单例
    private init (){
        
    }
    public func addScore() {
        score += 10
    }
}
