FROM python:3.14-slim

WORKDIR /app

# uv setup
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY pyproject.toml uv.lock README.md ./

COPY src ./src

# Install the locked dependencies and project
RUN uv sync --locked --no-dev

EXPOSE 5000

CMD ["uv", "run", "python", "-m", "app.py"]
