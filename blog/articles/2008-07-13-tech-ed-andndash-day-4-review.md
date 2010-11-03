
title: "Tech Ed &ndash; Day 4 Review"
author: David
date: 2008/07/13

Here it is, final day wrap up. 

The first session of the day was with [Glenn Block](http://blogs.msdn.com/gblock/) and [Brian Noyes](http://briannoyes.net/) on [Composite WPF](http://codeplex.com/CompositeWPF) (the framework formerly known as Prism). You can think of the Composite WPF<sup>1</sup> library as the WPF version of the [Composite UI Application Block](http://msdn.microsoft.com/en-us/library/aa480450.aspx) (CAB), but it really is a lot more than that. Something to note regarding Composite WPF is that they didn’t start with the CAB codebase, but instead began writing their StockTrader reference application and pulled the framework out of their implementation instead of the other way around. The entire framework was written in a <acronym title="Test Driven Development">TDD</acronym> manner. Honestly, it really shows, too. I’ve been using the framework on one of my projects at work and it is one of the first examples from Microsoft of a well decoupled (and *useful*) piece of software that I’ve seen. I’m a huge fan. 

The next session was by [Dustin Campbell](http://diditwith.net/) on "Hardcore Reflection." Of all the sessions I attended, I think this was the one that started at exactly where my knowledge ended and built entirely on what I already knew. In other words, I learned *a lot* in this session! Dustin covered topics like RuntimeMethodHandlers, reflection-only assembly loading, and DynamicMethods (via IL generation). I had never really looked at anything under System.Reflection.Emit (frankly because it was scary), but it really isn’t all that bad. An interesting note is that DynamicMethods are what the <acronym title="Dynamic Language Runtime">DLR</acronym> is using for its high performance in languages like IronPython and IronRuby. 

After lunch, I stopped and watched a little ["Speaker Idol"](http://www.google.com/search?q=speaker+idol) from the [DotNetRocks](http://www.dotnetrocks.com/) guys. 

![Speaker Idol at Tech Ed](http://www.mohundro.com/blog/content/binary/WindowsLiveWriter/TechEdDay4Review_7565/Tech%20Ed%202008%202008-06-02%20006.jpg)

Next, I attended a session with [Roy Osherove](http://weblogs.asp.net/rosherove/) on Design and Testability. I would sum this talk was on how good code design and architecture allow for unit testing, which assists in maintenance because products spend far more time in maintenance than they do in the initial coding phase. (this is where a lot of the RAD ideas fall down - "Look, I’ve got an application written in a day! Look, I’m spending a week debugging this thing because I can’t find anything!") If you’re unfamiliar with ideas like Dependency Injection, I would encourage you to check them out. If you have code that relies on external dependencies (shared components, services, other classes, whatever), don’t have your code be in charge of creating it. Instead, pass that dependency (the interface, not the actual implementation) in via the constructor. In doing so, your constructor declares everything that it needs in order to run. It also allows you to override dependencies for testing or plug in fake services so that you can verify UI functionality without hitting databases or whatever. I’m glossing over details, but thinking in terms of breaking dependencies apart will change the way you think about code and, particularly, what abstraction really means. 

The final session of the day was by [John Lam](http://www.iunknown.com/) on [IronRuby](http://www.ironruby.com/). I am *very* excited about the IronRuby project. Ruby as a language intrigues me and being able to use it in the .NET Framework (and thus with projects I’ve already got) is very appealing. Something that was very exciting was getting to see the “world premiere” of [IronRuby running on ASP.NET MVC](http://www.iunknown.com/2008/06/ironruby-and-aspnet-mvc.html). Note that I didn’t say Rails, but ASP.NET MVC (Rails being the MVC framework on Ruby, while ASP.NET MVC is the... MVC framework on ASP.NET :-)).

All in all, I really enjoyed the conference. Something I didn’t quite expect (having never been to Tech Ed), was that there was very little that I saw that was completely new to me. This is likely a sign that my feed list is far too long, but you can stay relatively current if you will just spend an hour or so a day reading blogs! More and more, I’m beginning to feel that the actual face to face communication is where the real value in conferences comes from. Being able to talk to people who face the same problems you do every day or getting to speak with the people who work on the .NET Framework every day carries a lot more value. Blogs provide plenty of *very* current and relevant information, but text can communicate only so much. If you’re a developer, there are plenty of other resources outside of expensive conferences like Tech Ed that are available like user groups (hi [FSDNUG](http://www.fsdnug.org/)!) and local conferences (hi [DevLink](http://devlink.net/)!) that can give you a lot of the value. If you’re not already participating, why not? Get involved<sup>2</sup>! 

<sup>1</sup> Composite Application Guidance for WPF? Composite Application Library (CAL)? Why couldn’t we have stuck with Prism, guys?

<sup>2</sup> I didn’t realize this post would turn into a call to action to get involved, but that’s what stream on consciousness writing does I suppose.