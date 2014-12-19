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

<h3>Defaults</h3>
The following are set by default and need to be changed manually in
TimeWizard.rb:
<ul>
  <li>Default year: "2014"</li>
  </li>Default commit message: "Completed #{name} challenge"</li>
</ul>

<h3>timewizard Usage</h3>
<b>Alias:</b>
<code>timewizard (full file name) (day number) (month number)</code>

<b>Example:</b>
  <code>timewizard "README.md" 28 8</code>
<a href="http://imgur.com/2vB9CjM"><img src="http://i.imgur.com/2vB9CjM.png" title="source: imgur.com" /></a>

<h3>timewizard_all Usage<h3>

<b>Alias:</b>
<code>timewizard_all (day number) (month number)</code>

<b>Example:</b>
  <code>timewizard 1 10</code>
<a href="http://imgur.com/R9bmYiT"><img src="http://i.imgur.com/R9bmYiT.png" title="source: imgur.com" /></a>
<a href="https://github.com/amZotti/Java-Challenges">Success!</a>

<p>The alias timewizard_all will process all files of a given file type
within whatever directory you are currently in. All these files will be
committed on their own day.</p> 

<p>If a user wants to disable auto-incrementing days they can just comment
out or delete the line in TimeWizardWrapper "days.next!". </p>

<p>If a user wants to specify the number of days they wish to increment by
they can do this by replacing "days.next!" with the following code:</p>

<pre>
days = days.to_i

days += (number you wish you increment days by)

days = days.to_s
</pre>
