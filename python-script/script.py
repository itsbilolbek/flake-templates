#!/usr/bin/env -S uv run --script
# /// script
# dependencies = [
#   "typer",
#   "loguru",
# ]
# ///

import typer
from loguru import logger

app = typer.Typer(add_completion=False)


@app.command()
@logger.catch  # Intercepts unhandled exceptions and prints rich call-stack context
def main(
    name: str = typer.Argument("World", help="Who to greet"),
    verbose: bool = typer.Option(False, "--verbose", "-v", help="Enable debug logs"),
):
    """
    A simple Python CLI template powered by Typer and Loguru.
    """

    logger.debug(f"Starting script execution with params: name='{name}'")

    print(f"Hello, {name}!")

    logger.debug("Script completed successfully.")


if __name__ == "__main__":
    app()
