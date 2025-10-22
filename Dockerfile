This Dockerfile sets up a Mars-compatible development environment for the `primer` repository. 
It uses the Mars base image, sets the working directory to /app, copies the repository files, 
and installs project dependencies using `uv sync --frozen`. The container starts with an interactive 
bash shell, allowing contributors to explore, build, or run tests without needing to install package managers manually.


FROM public.ecr.aws/x8v8d7g8/mars-base:latest
WORKDIR /app
COPY . .
RUN npm install
CMD ["/bin/bash"]
