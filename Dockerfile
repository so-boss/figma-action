FROM node:10

LABEL com.github.actions.name="Figma Action"
LABEL com.github.actions.description="Export image assets from figma to GitHub"
LABEL com.github.actions.icon="image"
LABEL com.github.actions.color="purple"

LABEL repository="http://github.com/so-boss/figma-action"
LABEL homepage="http://github.com/so-boss"
LABEL maintainer="Michael Evan <email@michaelevan.com>"

WORKDIR /
COPY . /
RUN npm install

ENTRYPOINT [ "node", "/entrypoint.js" ]
