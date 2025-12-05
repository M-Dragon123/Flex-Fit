# 域名配置指南 - malongjie.top

## 在Render配置自定义域名

### 步骤1：在Render添加域名

1. 登录 Render Dashboard
2. 进入你的 `flexfit` 项目
3. 点击 **Settings** 标签
4. 找到 **Custom Domains** 部分
5. 点击 **Add Custom Domain**
6. 输入：`malongjie.top`
7. 点击 **Save**

Render会显示需要配置的DNS记录。

### 步骤2：配置DNS记录

根据你的域名注册商（阿里云/腾讯云/Cloudflare等），添加以下记录：

#### 方式A：使用CNAME（推荐）

如果你想用 `www.malongjie.top` 或子域名：

```
类型: CNAME
名称: www (或 @)
值: flex-fit-8jo8.onrender.com
TTL: 自动或3600
```

#### 方式B：使用A记录

如果你想用根域名 `malongjie.top`：

Render会提供一个IP地址，添加：

```
类型: A
名称: @
值: [Render提供的IP地址]
TTL: 自动或3600
```

### 步骤3：等待DNS生效

- DNS传播通常需要 **5分钟到48小时**
- 可以用这个工具检查：https://dnschecker.org

### 步骤4：启用HTTPS

Render会自动为你的域名配置免费SSL证书（Let's Encrypt）：

1. DNS生效后，回到Render Dashboard
2. 在Custom Domains中，你的域名旁边会显示 "SSL Pending"
3. 等待几分钟，状态会变为 "SSL Active" ✅

## 验证配置

配置完成后，访问：
- ✅ https://malongjie.top
- ✅ https://malongjie.top/pages/programs.html

应该都能正常访问。

## 常见问题

### Q: DNS配置后还是访问不了？
A: 等待时间可能较长，用 `nslookup malongjie.top` 检查DNS是否生效

### Q: 显示"Not Secure"警告？
A: 等待Render自动配置SSL证书，通常5-10分钟

### Q: 想同时支持 www 和非www？
A: 在DNS中同时添加：
```
@ → A记录 → Render IP
www → CNAME → flex-fit-8jo8.onrender.com
```

## SEO配置（域名生效后）

1. **更新sitemap.xml** - 已经配置为 malongjie.top ✅
2. **提交到Google Search Console**
   - 访问：https://search.google.com/search-console
   - 添加资源：https://malongjie.top
   - 验证所有权（使用HTML文件或DNS验证）
   - 提交sitemap：https://malongjie.top/sitemap.xml

3. **配置Google Analytics**（可选）
   - 创建GA4资源
   - 在所有HTML页面添加跟踪代码

## 推荐配置

如果你的域名在 **Cloudflare**：
- 开启 "Proxied" 模式（橙色云朵）
- 自动获得CDN加速
- 更好的DDoS防护
- 更快的全球访问速度

## 域名vs Render默认域名对比

| 特性 | malongjie.top | flex-fit-8jo8.onrender.com |
|------|-----------|----------------------------|
| SEO权重 | ✅ 独立积累 | ❌ 共享Render域名 |
| 品牌形象 | ✅ 专业 | ❌ 临时感 |
| 易记性 | ✅ 简短 | ❌ 复杂 |
| 灵活性 | ✅ 可换服务器 | ❌ 绑定Render |
| 成本 | 域名费用 | 免费 |

**结论：强烈建议使用 malongjie.top！**
