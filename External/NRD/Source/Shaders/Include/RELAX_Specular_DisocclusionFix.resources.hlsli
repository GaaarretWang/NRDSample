/*
Copyright (c) 2022, NVIDIA CORPORATION. All rights reserved.

NVIDIA CORPORATION and its licensors retain all intellectual property
and proprietary rights in and to this software, related documentation
and any modifications thereto. Any use, reproduction, disclosure or
distribution of this software and related documentation without an express
license agreement from NVIDIA CORPORATION is strictly prohibited.
*/

#include "RELAX_Config.hlsli"

#define NRD_DECLARE_INPUT_TEXTURES \
    NRD_INPUT_TEXTURE( Texture2D<float4>, gSpecularIllumination, t, 0 ) \
    NRD_INPUT_TEXTURE( Texture2D<float4>, gSpecularIlluminationResponsive, t, 1 ) \
    NRD_INPUT_TEXTURE( Texture2D<float>, gSpecularHistoryLength, t, 2 ) \
    NRD_INPUT_TEXTURE( Texture2D<float4>, gNormalRoughness, t, 3 ) \
    NRD_INPUT_TEXTURE( Texture2D<float>, gViewZFP16, t, 4)

#define NRD_DECLARE_OUTPUT_TEXTURES \
    NRD_OUTPUT_TEXTURE( RWTexture2D<float4>, gOutSpecularIllumination, u, 0 ) \
    NRD_OUTPUT_TEXTURE( RWTexture2D<float4>, gOutSpecularIlluminationResponsive, u, 1 )

#define NRD_DECLARE_CONSTANTS \
    NRD_CONSTANTS_START \
        RELAX_SHARED_CB_DATA \
        NRD_CONSTANT( float, gDepthThreshold ) \
        NRD_CONSTANT( float, gDisocclusionFixEdgeStoppingNormalPower ) \
        NRD_CONSTANT( float, gMaxRadius ) \
        NRD_CONSTANT( int, gFramesToFix ) \
    NRD_CONSTANTS_END

#define NRD_DECLARE_SAMPLERS \
    NRD_COMMON_SAMPLERS
