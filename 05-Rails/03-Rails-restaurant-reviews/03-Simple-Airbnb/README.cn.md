## 背景和目标

我们将要开发一个简单的类似于爱彼迎airbnb的克隆版应用，(就像[这个](https://rails-simple-airbnb.herokuapp.com))。这是我们应用的所有的用户故事：

- 做为用户，我可以在网站浏览所有的公寓
- 做为用户，我可以在网站发布一个公寓，指定公寓的名字和地址
- 做为用户，我可以查看一个公寓的详细信息
- 做为用户，如果我不小心输入了错误的信息，我可以修改公寓的详细信息
- 做为用户，一旦我不想继续出租了，我可以从网站删除一个公寓

现在没有`rake`了，所以不要在`fullstack-challenges`里面创建你的Rails应用⛔

```bash
cd ~/code/<user.github_nickname>
rails new rails-simple-airbnb --skip-active-storage --skip-action-mailbox
cd rails-simple-airbnb
git add .
git commit -m "rails new"
gh repo create
git push origin master
```

## 详细说明

### 1 - 模型Model

使用正确的Rails生成器来生成`Flat`模型。它应该包括以下字段。你也可以自行添加一些字段！😊

- `name`, 数据类型是字符串`string`
- `address`, 数据类型是字符串 `string`
- `description`, 数据类型是文本 `text`
- `price_per_night`, 数据类型是整数 `integer`
- `number_of_guests`, 数据类型是整数 `integer`

### 2 - 控制器Controller 和 路由Routes

使用正确的Rails生成器来生成一个空的（没有任何动作的）控制器`FlatsController` 。

既然我们将要开发所有的增删查改CRUD路由，我们可以添加所有的7个增删查改CRUD路由到`config/routes.rb`。你可以用哪一个关键词来直接生成这些路由？

### 3 - 初始化Seed

我们在控制台`rails console`里创建一些公寓，或者更好的方法是为我们的应用创建一个种子文件（seed file)。尽管我们暂时不能通过网站来添加公寓，这仍然会帮助我们设计视图。我们在`db/seeds.rb` 文件里创建大约4个公寓。你可以从这一个开始：


```ruby
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
```

你还记得为什么我们使用`.create!` 而不是`.create`？如果你已经忘了就问一下旁边的人 😊

### 4 - 做为用户, 我可以浏览所有的公寓

我们在控制器`FlatsController`里添加正确的动作 (提示: 是 `index` 😉)。控制器里的动作应该读取数据库里所有的公寓flats（我们使用Active Record）并且传递给视图。

视图应该循环遍历并显示这些公寓，就像下面的截图那样。我们从头开始设计。我们可以使用[font awesome](https://fontawesome.com/icons) 或 [materialize](http://materializecss.com/icons.html) 图标。

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/index.png)

### 5 - 做为用户，我可以添加一个公寓

一定要记得，我们需要两个路由来创建一个公寓。一个路由是用来显示添加新公寓的表单，另外一个路由是用来处理提交表单时产生的`POST` 请求。尝试在视图里直接使用`form_for`帮助方法，而且要让表单好看一些。

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/index.png)

### 6 - 做为用户，我可以查看一个公寓的详细信息

添加正确的动作来显示一个给定公寓的所有的信息。我们如何知道用户想看哪一个公寓呢？

我们也要使用`link_to`帮助方法创建动态链接，并更新`index.html.erb`视图。

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/show.png)

### 7 - 做为用户，我可以编辑一个公寓的详细信息

我们也要添加编辑一个公寓的选项，以便在创建公寓后可以去除拼写错误。重构`new.html.erb`，把它做成一个局部视图（view partial）怎么样？

别忘了使用新的编辑公寓的链接来更新`index.html.erb` 和 `show.html.erb`视图！

### 8 - 做为用户，我可以从网站删除一个公寓

我们也要添加从网站删除一个公寓的功能。我们如何创建一个链接来删除一个资源，这个链接要触发控制器里的哪一个动作？

再一次，让我们更新所有的视图，加入这个删除链接。

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/index_2.png)

### 9 - 在公寓模型flat model添加`picture_url` （选做）

我们在公寓模型添加一个图片链接地址的属性（仅需要保存图片链接地址的字符串）。更新我们的新建公寓表单和编辑公寓表单，让用户可以指定用来显示在网站上的公寓的图片。我们也可以更新我们的index和show页面来显示这个图片。


你可以在这里找到精美的公寓图片[unsplash](https://unsplash.com/search/photos/house)。

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/show_2.png)

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/index_3.png)

### 10 - 过滤公寓（选做）

我们来尝试添加一个搜索框，可以在index页面过滤公寓以便找到符合要求的公寓！

- 我们如何知道用户在搜索什么？
- 我们可以用哪一个active record 方法来创建一个简单的搜索引擎？ 你可以从这里开始`@flats = Flat.where("name LIKE '%garden%'")`，在进一步开发之前确保你弄懂了这个语句声明。
- 我们如何确保当用户没有搜索的时候页面还是像原来的index页面一样？
- 我们如何确保在用户搜索之后搜索框里已经有搜索查询内容了？

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/simple-airbnb/index_4.png)
