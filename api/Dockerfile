FROM elixir:alpine
WORKDIR /opt/api
COPY . .
RUN apk add inotify-tools
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix compile
ENTRYPOINT []
EXPOSE 4000