# Ichimatsu

Ichimatsu is a library for transforming normal browser lists into checklists
and remembering them. 

# To Use 

Just include a script tag at the bottom of your `<body>`:

    <script src="ichimatsu.js"></script>

It will automatically apply itself to any `<li>` elements.

# Rationale and details

Suppose you have a list in your browser:

    <li>Osomatsu</li>
    <li>Karamatsu</li>
    <li>Choromatsu</li>
    <li>Ichimatsu</li>
    <li>Juushimatsu</li>
    <li>Todomatsu</li>

And you want to make it into a checklist. Github flavored markdown supports
this as ["task
lists"](https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments),
but many markdown processors don't recognize the syntax. Even if they do,
because your choices aren't saved they're of limited use as a checklist. But
what if there was a workaround? This is where Ichimatsu comes in.

If you run a Github-style task list through a markdown processor that doesn't
recognize the syntax, it looks like this in the browser:

    <li>[ ] Osomatsu</li>
    <li>[ ] Karamatsu</li>
    <li>[ ] Choromatsu</li>
    <li>[x] Ichimatsu</li>
    <li>[ ] Juushimatsu</li>
    <li>[ ] Todomatsu</li>

If you load Ichimatsu in the browser it will find these and turn the brackets
into a checkbox. Additionally, it will use `localStorage` to save the checkbox
state, so as long as you use the same browser you can save your checks even if
you close the window or what have you.

# License 

WTFPL, do as you please.
