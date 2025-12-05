# FlexFit 部署指南

## Vercel 部署步骤（强烈推荐）

### 为什么选择Vercel？
- ✅ **不会休眠** - 24/7在线，访问秒开
- ✅ **全球CDN** - 访问速度极快
- ✅ **SEO友好** - 不会因休眠影响搜索引擎抓取
- ✅ **部署简单** - 一键部署
- ✅ **免费额度大** - 100GB带宽/月

### 方法一：通过Vercel网站部署（最简单）

1. **访问Vercel**
   - 打开 https://vercel.com
   - 用GitHub账号登录

2. **导入项目**
   - 点击 "Add New..." → "Project"
   - 选择 `M-Dragon123/Flex-Fit` 仓库
   - 点击 "Import"

3. **配置项目**
   - **Project Name**: flexfit（或你喜欢的名字）
   - **Framework Preset**: Other（静态HTML）
   - **Root Directory**: ./
   - **Build Command**: 留空
   - **Output Directory**: ./
   - 点击 "Deploy"

4. **等待部署完成**
   - 通常10-30秒就完成
   - 会得到一个URL：`https://flexfit.vercel.app`

5. **配置自定义域名**
   - 在项目设置中点击 "Domains"
   - 添加 `malongjie.top` 和 `www.malongjie.top`
   - 按照提示配置DNS

### 方法二：使用Vercel CLI

```bash
# 安装Vercel CLI
npm install -g vercel

# 登录
vercel login

# 部署
vercel --prod
```

---

## Render 部署步骤（备选方案，会休眠）

### 方法一：Static Site（免费但会休眠）

1. **准备Git仓库**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin <your-github-repo-url>
   git push -u origin main
   ```

2. **在Render创建Static Site**
   - 访问 https://render.com
   - 点击 "New +" → "Static Site"
   - 连接你的GitHub仓库
   - 配置如下：
     - **Name**: flexfit（或你喜欢的名字）
     - **Branch**: main
     - **Build Command**: 留空或填 `echo "No build needed"`
     - **Publish Directory**: `.`（当前目录）
   - 点击 "Create Static Site"

3. **等待部署完成**
   - Render会自动部署
   - 完成后会给你一个URL，如：`https://flexfit.onrender.com`

4. **配置自定义域名（可选）**
   - 在Render dashboard中点击你的站点
   - 进入 "Settings" → "Custom Domains"
   - 添加你的域名（如 malongjie.top）
   - 按照提示配置DNS记录

### 方法二：使用render.yaml自动配置

项目已包含 `render.yaml` 文件，Render会自动识别并配置。

### 其他部署选项

#### Netlify（替代方案）
```bash
# 安装Netlify CLI
npm install -g netlify-cli

# 部署
netlify deploy --prod
```

#### Vercel（替代方案）
```bash
# 安装Vercel CLI
npm install -g vercel

# 部署
vercel --prod
```

#### GitHub Pages（免费）
1. 在GitHub仓库设置中启用GitHub Pages
2. 选择分支：main
3. 选择目录：/ (root)
4. 保存，访问 `https://yourusername.github.io/flexfit`

## 部署后检查清单

- [ ] 所有页面可以正常访问
- [ ] 图片和CSS正确加载
- [ ] 导航链接工作正常
- [ ] 表单功能正常（如果有后端）
- [ ] 移动端显示正常
- [ ] sitemap.xml可访问：`https://your-domain.com/sitemap.xml`
- [ ] robots.txt可访问：`https://your-domain.com/robots.txt`

## SEO配置

部署后需要：

1. **提交sitemap到Google**
   - 访问 https://search.google.com/search-console
   - 添加你的网站
   - 提交sitemap：`https://your-domain.com/sitemap.xml`

2. **更新sitemap.xml中的域名**
   - 将所有 `malongjie.top` 替换为你的实际域名

3. **配置Google Analytics**（可选）
   - 在所有页面添加GA追踪代码

4. **测试SEO**
   - 使用 https://pagespeed.web.dev/ 测试性能
   - 使用 https://search.google.com/test/rich-results 测试结构化数据

## 性能优化建议

部署后可以考虑：

1. **启用CDN** - Render自带CDN
2. **图片优化** - 转换为WebP格式
3. **压缩资源** - 使用Gzip/Brotli压缩
4. **缓存策略** - .htaccess已配置

## 故障排查

### 页面404错误
- 检查文件路径大小写
- 确保所有文件都已提交到Git

### CSS/图片不加载
- 检查路径是否正确（相对路径）
- 查看浏览器控制台错误信息

### 自定义域名不工作
- 检查DNS配置是否正确
- 等待DNS传播（可能需要24-48小时）

## 联系支持

如有问题，可以：
- 查看Render文档：https://render.com/docs
- Render社区：https://community.render.com
