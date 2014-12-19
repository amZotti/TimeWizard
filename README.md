<h1>Outcome</h1>
<p>Enable users to retroactively modify commit timestamps</p>

<h2>Purpose</h2>
<p>While taking a Data Structures and Algorithms class I ran into an interesting
problem. I was creating high quality work that I would deffinetely want to be
able to reference later on, but due to the political nature of academia I was
unable to open source my content at that time. I decided I would go head, do my
coursework, and then just commit it later</p>

<p>A few months later my course was over and I wanted to commit my work. But
committing normally would not have the proper timestamp that would reflect when
I completed the work. I searched for an easy way to manupulate timestamps in Git
but shockingly there were none. From there on I decided to create TimeWizard
</p>

This is configured to only work if the TimeWizard directory is located in the
home directory. You must add this directory to your system's root path so it can
find the alias correctly. You may also have to type 'sudo chmod 755 timewizard' from
the TimeWizard directory in order to set permissions.

<h3>Usage</h3>
<b>Aliases:</b>
<code>timewizard (full file name) (day number) (month number)</code>

<b>Example:</b>
  <code>timewizard "Bool.java" 25 9</code>
Would get committed on September 25th.

<h3>Defaults</h3>
The following are set by default and need to be changed manually in
TimeWizard.rb:
<ul>
  <li>Default year: "2014"</li>
  </li>Default commit message: "Completed #{name} challenge"</li>
</ul>

<h3>Things to work on:</h3>
Allow users to include optional commit message from command line
Allow users to add/commit multiple files at once

<h3>Live Examples</h3>
<a href="https://github.com/amZotti/Java-Challenges">My Sweet Java
Challenges</a>
