#  Day Two

Using code or less than 100 words, describe Delegation. How does this pattern differ from 
other models such as Notifications or Key-Value Observation?

Delegation is a simple and powerful pattern in which one object in a program acts on behalf of, or in coordination with, another object. The delegating object keeps a reference to the other object–the delegate–and at the appropriate time sends a message to it. The message informs the delegate of an event that the delegating object is about to handle or has just handled. The delegate may respond to the message by updating the appearance or state of itself or other objects in the application, and in some cases it can return a value that affects how an impending event is handled. The main value of delegation is that it allows you to easily customize the behavior of several objects in one central object.

Notifications: This is an asyn communication pattern. A message will be posted on a bus and the object that is listen
for this message may act on it. There is no requirement that the listening object take an action. Also, there is
not requirement that the object posting the message do wait for a response. 

The Observer: The recipient which is waiting for the notification to be triggered, to execute whatever code you want it to.
The Notification: The actual notification that it is going to be fired whenever we intend the Observer to perform a certain action. And, we can have as many notifications as we want, all over the app.

So, by this, we understand that the Observer/Notification is a communication pattern, based on many to one. By many, we meant the Notification(s) and by one we mean the Observer.


Key-Value Observation: Key-value observing provides a mechanism that allows objects to be notified of changes to specific properties of other objects. It is particularly useful for communication between model and controller layers in an application. (In OS X, the controller layer binding technology relies heavily on key-value observing.) A controller object typically observes properties of model objects, and a view object observes properties of model objects through a controller. In addition, however, a model object may observe other model objects (usually to determine when a dependent value changes) or even itself (again to determine when a dependent value changes).	

KVO’s primary benefit is that you don’t have to implement your own scheme to send notifications every time a property changes. Its well-defined infrastructure has framework-level support that makes it easy to adopt—typically you do not have to add any code to your project. In addition, the infrastructure is already full-featured, which makes it easy to support multiple observers for a single property, as well as dependent values.
