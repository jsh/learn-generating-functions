<!--
  <<< Author notes: Step 2 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
  Historic note: previous version checked for empty pull request, changed to the correct theme `minima`.
-->

## Step 2: Configure your site

_You turned on GitHub Pages! :tada:_

We'll work in a branch, `new-content`, that I created for you to get this site looking great. :sparkle:

Jekyll uses a file titled `_config.yml` to store settings for your site, your theme, and reusable content like your site title and GitHub handle. You can check out the `_config.yml` file on the **Code** tab of your repository.

We need to use a blog-ready theme. For this activity, we will use a theme named "Merlot".

### :keyboard: Activity: Configure your site

1. Browse to the `_config.yml` file in the `new-content` branch.
1. In the upper right corner, open the file editor.
1. Add a `theme:` set to **merlot** so it shows in the `_config.yml` file as below:
   ```yml
    remote_theme: pages-themes/merlot@v0.2.0
    plugins:
    - jekyll-remote-theme # add this line to the plugins list if you already have one
   ```
1. (optional) You can modify the other configuration variables such as `title:`, `author:`, and `description:` to further customize your site.
1. Commit your changes.
1. (optional) Create a pull request to view all the changes you'll make throughout this course. Click the **Pull Requests** tab, click **New pull request**, set `base: master` and `compare:new-content`.
1. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.
