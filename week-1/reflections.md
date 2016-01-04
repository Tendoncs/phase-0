#1.1 Think About Time Reflection


Which time management and productivity ideas did you learn about?
I learned more about meditation. That was cool to read about also watched a video someone linked.

What is "Time Boxing?" How can you use it in Phase 0?
Split large tasks into smaller tasks. Any task that takes more then 30 mins should be split into parts that take no more then 30mins. So take a task that takes 8 hours and split it into 16 smaller tasks and work on each one for 30 mins. This is good because it allows you to know if you are going over or under on each task. But it is hard to know on 8 hours what parts went over or under.

Split studying across two days in 30 mins each chunks. That

How do you manage your time currently?
I use time boxing. I also set up small tasks to start on. That way you get going.

Is your current strategy working? If not, why not?
Yes. It works well. You can always better something. I want to add meditation to the start and also make sure that 8am to 11am on Mondays goes to planning the week.

Can/will you employ any of them? If so, how?
I will work on meditation to two and get into the mind set. I used to do this before tests and it always helped.

What is your overall plan for Phase 0 time management?
Look over the stuff on Monday and work for 2 hours Monday morning. Part of that will be to plan out my week. I have to get some work done on Monday.

#1.2 The Command Line Reflection

1) What is a shell? What is "bash?"

Shell vs bash is a little confusing. A lot of people use the two words interchangeably. Shells are programs that interface with the system. Bash is a type of a shell program. Think of it like this. All Volcanoes are Mountains but not all mountains are Volcanoes

Shells come in two types Graphic and command line. Windows has two common ones. GUI is explorer.exe and for Command line you have CMD. There are many types of shell programs past just bash. For example ssh is a type of shell program that was designed around the idea to treat a remote system as if it was right in front of you. you can run commands on a server that is 1,200 miles away as if it was just in front of you.

2) What was the most challenging for you in going through this material?

remembering what commands do. It has been a little while and it does not take long to get trusty.

3) Were you able to successfully use all of the commands?

Yes.

4) In your opinion, what are the most important commands and arguments to know?

cd and ls. These are the two you are going to use the most. pwd is another that will get used a lot. You cant just tell the location you are in by landmarks. Two folders might look 100% the same but one one Users/Alex/Temp and the other is User/Alex/Temphistory and a delete command in the wrong one could be fun...

A good argument is ls -l. Use it all the time to see what is going on in a folder.

input arguments are just as useful if not more useful than the command itself. All a command is a program that was created to do something and what this input argument does is tell the program what things you want it to do. It can also be called a switch.

-pwd

Present working dir

-ls

Shows what is in the directory

-mv

move

-cd

change directory

-../

Using something is the parent directory.

-touch

Touches a file. If there is no file it will create it.

-mkdir
Make directory
-less
Less is a great way to pipe a lot of data into a way that can be broken into small parts. Lets say we had a program called YellowPages and it would spit out all the yellow pages at once. That is great but you cant read it as fast as your computer can display it. So doing YellowPages | less
would give you smaller amounts of info at a time.
-rmdir
remove directory you may need some switched or a sudo command
-rm
remove file.
-help

#1.4 Forking and Cloning Reflection



If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?


Forking a repository gives you control over a copy of a current repository. Creating a new repository is good for when you want to start a new project and not help with a current project.

Creating a new repo is when you start a new project.

Forking a repo is for when you are starting to help on a current project.

Cloning a repo is for when you want to pull down a copy of a project.


Forking a report is easy. Go to the main page of that report and click fork on the top right.

To create a new repo click on the + in the top right it will open the create repo wizard. Give it a name and make it public or private and then give it a license and click create.

To clone a repo go to the repo you want to close and copy the HTTPS string from the webpage. Then go into command line and type git clone HTTPS-string and hit enter. This may take a while as it downloads the whole repo.


What struggles did you have setting up git and GitHub? What did you learn in the process?
None. I have set it up before. One issue I have had this time is when I went to use git I got this

[\[\e[0;32m\]master\[\e[0m\]] it has something to do with setting up command window. I will get it fixed.

