# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/reference_streetwear_character.png' "https://cool-anteater-319.convex.cloud/api/storage/2ed173b8-5531-4a32-a5a3-8e4d258373a3"
