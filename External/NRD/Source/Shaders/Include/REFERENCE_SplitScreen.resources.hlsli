/*
Copyright (c) 2022, NVIDIA CORPORATION. All rights reserved.

NVIDIA CORPORATION and its licensors retain all intellectual property
and proprietary rights in and to this software, related documentation
and any modifications thereto. Any use, reproduction, disclosure or
distribution of this software and related documentation without an express
license agreement from NVIDIA CORPORATION is strictly prohibited.
*/

#define NRD_DECLARE_CONSTANTS \
    NRD_CONSTANTS_START \
    NRD_CONSTANTS_END

#define NRD_DECLARE_INPUT_TEXTURES
    NRD_OUTPUT_TEXTURE( Texture2D<float4>, gIn_Input, t, 0 )

#define NRD_DECLARE_OUTPUT_TEXTURES \
    NRD_OUTPUT_TEXTURE( RWTexture2D<float4>, gOut_Output, u, 0 )

#define NRD_DECLARE_SAMPLERS \
    NRD_COMMON_SAMPLERS
