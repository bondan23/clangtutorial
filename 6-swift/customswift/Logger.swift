import Foundation

/// Simple Logger
///
/// Constructor takes prefix string which will be printed before actual object
///
public class Logger
{
    @usableFromInline
    internal var prefix: String
    
    public init(_ prefix: String)
    {
        self.prefix = prefix
    }
    
    /// Prints `object` with prefix
    @inlinable
    public func log<T>(object: T)
    {
        print("This Is Prefix \(prefix)")
        print(object)
    }
}
