
make-checkboxes = ->
  count = 0
  for li in document.query-selector-all \li
    # format is [.] 
    if not li.innerHTML.match /^\[.\]/ then continue
    count = count + 1

    li.set-attribute \ichimatsu-pos, count

    # assume anything besides ' ' means it's checked
    # typically that would just be an 'x'
    checked = 'checked="checked"'
    if li.innerHTML.1 == ' ' then checked = ''

    li.innerHTML = "<input type=\"checkbox\" #checked>" + li.innerHTML.substr 3

    checkbox = li.query-selector \input
    checkbox.onchange = save-state

    load-state li

save-state = ->
  url = window.location.pathname
  pos = this.parent-node.get-attribute \ichimatsu-pos
  console.log "#url:#pos"
  local-storage.set-item "#url:#pos", this.checked

load-state = (li) ->
  url = window.location.pathname
  pos = li.get-attribute \ichimatsu-pos
  saved = local-storage.get-item "#url:#pos"

  if saved == null then return # no saved state

  # localstorage only saves strings
  if saved == \false then saved = false

  checkbox = li.query-selector \input
  checkbox.checked = saved

make-checkboxes!





