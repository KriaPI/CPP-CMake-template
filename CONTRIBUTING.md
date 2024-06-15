## Commit rules
        Category: description

        Explanation

Categories include: `Feature`, `Setup`, `BugFix`, `Document`, `Refactor`, `Clean`, `Format` and `WIP`. The description and category should not exceed 50 characters and the letter after `:` should not be capitalised. Use past verb tense. Add a new line after the description if a paragraph for further explanations is needed.

### Example
    Bugfix: resolved super important issue 

    This is a really good explanation of what the issue was and how it was solved.

### Notes
The category should be based on the commit message's main purpose. 
Reserve the `WIP` category for pushing work that is unfinished. `Clean` should be used when only deleting files. `Format` should be used when formatting code. `Document` should be used whenever documentation is added, removed or edited. 

## Branch rules
    Category/description

Categories include: `Feature`, `Setup`, `BugFix`, `Document` and `Refactor`. Verbs should be in imperative mood. `-` should be used in place of spaces in the description.
### Examples
    Feature/syntax-highlighting
    Setup/add-dependency
    Refactor/add-constexpr-specifiers
    Refactor/make-variables-more-descriptive