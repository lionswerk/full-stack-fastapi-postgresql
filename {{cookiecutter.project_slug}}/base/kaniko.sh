docker run \
    -v "$HOME"/.config:/root/.config \
    -v $(pwd):/workspace \
    gcr.io/kaniko-project/executor:latest \
    --dockerfile /workspace/base.dockerfile \
    --destination "jqp/base:latest" \
    --context dir:///workspace/
