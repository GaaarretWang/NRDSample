/*
Copyright (c) 2022, NVIDIA CORPORATION. All rights reserved.

NVIDIA CORPORATION and its licensors retain all intellectual property
and proprietary rights in and to this software, related documentation
and any modifications thereto. Any use, reproduction, disclosure or
distribution of this software and related documentation without an express
license agreement from NVIDIA CORPORATION is strictly prohibited.
*/

#pragma once

#pragma region [  CoreInterface  ]

static void NRI_CALL SetDeviceSemaphoreDebugName(DeviceSemaphore& deviceSemaphore, const char* name)
{
    ((DeviceSemaphoreVK&)deviceSemaphore).SetDebugName(name);
}

void FillFunctionTableDeviceSemaphoreVK(CoreInterface& coreInterface)
{
    coreInterface.SetDeviceSemaphoreDebugName = SetDeviceSemaphoreDebugName;
}

#pragma endregion