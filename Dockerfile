FROM node:18
WORKDIR /app

# 修复文件权限
RUN chmod -R 755 /app

COPY package*.json ./
RUN npm install
COPY . .

# 构建 Nuxt 应用
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start"]