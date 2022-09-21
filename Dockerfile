FROM python:latest
COPY . /
RUN pip install mkdocs
RUN pip install mkdocs-material
EXPOSE 8000
CMD ["mkdocs", "serve"]