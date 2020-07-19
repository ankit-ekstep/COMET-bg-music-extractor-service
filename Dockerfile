FROM hassanamin994/node_ffmpeg_spleeter:1

WORKDIR /bg-music-extractor-service

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 4000
CMD ["npm", "run", "docker:prod"]
HEALTHCHECK --start-period=30s --interval=2m CMD curl -sS localhost:4000/health || exit 1