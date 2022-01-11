## 背景与目标

今天，我们有**三个目标**:

1. 在Heroku部署我们的Watch List
2. 添加图片上传功能
3. 下午2点有Rails测验！

### 设置

我们将继续昨天的代码，请返回你的文件夹：

```bash
cd ~/code/<user.github_nickname>/rails-watch-list
```

如果生成的rails应用程序**没有** `--database` 标签，我们需要手动将这个rails应用程序迁移到Postgresql for heroku。如果Gemfile中有 `pg` gem，你可以检查应用程序是否配置了postgresql。

如果需要将应用程序更改为postgres，请打开Gemfile，找到 `sqlite` 行。把它**替换**为：

```ruby
# Gemfile
gem "pg"
```

打开 `config/database.yml` 文件, **删除** 所有内容，替换为：

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5

development:
  <<: *default
  database: rails-watch-list_development

test:
  <<: *default
  database: rails-watch-list_test
```

打开终端并运行:

```bash
rails db:create
rails db:migrate
rails db:seed
```

### 第一次部署

回到讲座，按照步骤在Heroku上部署应用程序。你需要注册Heroku.

### 图片上传

我们从种子中得到了 `movies` 海报，感谢[TMDB API](https://developers.themoviedb.org/3)但是一张电影海报并不能代表整个列表的内容，所以我们的目标是在 `List` 模型中**添加一张图片**，这样每个列表都能有更好的说明。

用户要能上传一个图像，然后将显示在屏幕上 `List` 的视图 `index` 作为缩略图/封面。在 `List` 的 `show` 视图上, 应该显示相同的图像，但是更大，后面是保存到其中的电影！

尽管这是一个简单的应用程序，也请尽你最大的努力，用Bootstrap、一些漂亮的字体、和你所有的创造力把它变得好看🎨😊🎨

**提示**: 你可以在[Le Wagon UI Kit](https://uikit.lewagon.com/)基础之上构建。

有关rails提供的所有图像助手的概述(`image_tag`, `image_path`, `asset-url`, ...) 请查看[cheatsheet](https://kitt.lewagon.com/knowledge/cheatsheets/rails_image_helpers) 👈

### 列表审查（选做部分）

如果你已经完成了这些图片，可以试着在电影列表中添加一个匿名评论系统，这样每个人都可以对我们列表中的电影发表评论！

## 更进一步

恭喜你完成Watch list挑战。 你现在可以与全世界分享你的精彩的程序了！

但还有一个问题...任何人都可以创建一个列表，在列表中添加书签，或者删除你已经添加书签的电影。而且评论是完全匿名的。😔

下周我们会学习如何解决这个问题。我们将在接下来的两节课中介绍用户身份验证和用户授权。
