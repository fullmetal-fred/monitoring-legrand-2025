FROM node:22 as base
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY . /workspace
WORKDIR /workspace
RUN pnpm install

FROM base as dev-live
WORKDIR /workspace
EXPOSE 3030
ENTRYPOINT ["pnpm"]
CMD ["run", "dev"]

FROM base as prod-live
EXPOSE 3030
ENTRYPOINT ["pnpm"]
CMD ["run", "start"]

FROM base as dev-static
WORKDIR /workspace
RUN npm run build
EXPOSE 8787
ENTRYPOINT ["wrangler"]
CMD ["dev"]