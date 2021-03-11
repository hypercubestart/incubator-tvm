#if defined(__CUDA_ARCH__) && (__CUDA_ARCH__ >= 610)
#include <sm_61_intrinsics.h>
#endif
extern "C" __global__ void fused_divide_add_round_cast_clip_cast_23_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 3.052289e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_22_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 4.320321e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__23_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[4];
  __shared__ int pad_data_shared[324];
  __shared__ int placeholder_shared[576];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
  }
  if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
    if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
        ((int*)((signed char*)pad_data_shared + ((((((int)threadIdx.z) * 196) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + (((((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) - 32))))[0] : (int)(int)0);
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 6) {
            ((int*)((signed char*)placeholder_shared + (((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 63; ++ic_chunk_outer_outer) {
    __syncthreads();
    if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
      if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
          ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 648) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 392) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196)) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) + 360))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 6) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (ic_chunk_outer_outer * 288)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    #pragma unroll
    for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
      #pragma unroll
      for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 648) + (ic_chunk_inner * 324)) + (((int)threadIdx.y) * 36)) + (kh_inner * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
    #pragma unroll
    for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_inner1 * 324) + (((int)threadIdx.y) * 36)) + (kh_inner1 * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 648))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(oc_block1)]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((signed char*)T_cast)[((((((((int)blockIdx.y) * 784) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(ax4)]) * 1.454542e-02f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 9.007953e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
  }
}

extern "C" __global__ void fused_cast_clip_cast_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))])), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_nn_global_avg_pool2d_2_kernel0(void* __restrict__ placeholder, void* __restrict__ tensor) {
  float tensor1[4];
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    tensor1[(ax4)] = 0.000000e+00f;
    for (int rv0 = 0; rv0 < 7; ++rv0) {
      for (int rv1 = 0; rv1 < 7; ++rv1) {
        if (((int)threadIdx.y) < 1) {
          tensor1[(ax4)] = (tensor1[(ax4)] + ((float*)placeholder)[(((((((((int)threadIdx.y) * 25088) + (((int)blockIdx.x) * 1568)) + (((int)threadIdx.x) * 196)) + (rv0 * 28)) + (rv1 * 4)) + ax4))]);
        }
      }
    }
  }
  for (int ax41 = 0; ax41 < 4; ++ax41) {
    if (((int)threadIdx.y) < 1) {
      ((float*)tensor)[(((((((int)threadIdx.y) * 512) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 4)) + ax41))] = (tensor1[(ax41)] * 2.040816e-02f);
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__16_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int placeholder_shared[576];
  __shared__ int pad_data_shared[360];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 11) {
            ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 7; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 13) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + ((((((((ic_chunk_outer_outer * 25088) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) - 228))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 11) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (ic_chunk_outer_outer * 288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
          #pragma unroll
          for (int oh = 0; oh < 4; ++oh) {
            #pragma unroll
            for (int oc_block = 0; oc_block < 4; ++oc_block) {
              compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner * 720) + (oh * 120)) + (kh_inner * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
            }
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 13) {
          ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + (((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) + 175388))))[0] : (int)(int)0);
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
        #pragma unroll
        for (int oh1 = 0; oh1 < 4; ++oh1) {
          #pragma unroll
          for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
            compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 720) + (oh1 * 120)) + (kh_inner1 * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(((oh1 * 4) + oc_block1))]);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((signed char*)T_cast)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 9.864906e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 6.070983e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_nn_pad_layout_transform_kernel0(void* __restrict__ T_layout_trans, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_layout_trans)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = (((((int)threadIdx.x) & 3) < 3) ? (signed char)((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((((int)threadIdx.x) & 3) * 50176) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) >> 2)))] * 5.070899e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128))) : (signed char)(signed char)0);
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_21_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int pad_data_shared[1320];
  __shared__ int placeholder_shared[256];
  for (int oh_init = 0; oh_init < 2; ++oh_init) {
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
      compute[((((oh_init * 4) + oc_block_init) + 8))] = 0;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 660) {
        ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 165) * 12544) + (((int)blockIdx.x) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 165) / 55) * 224)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 55) * 4)))))[0];
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 32) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 128) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 5) {
          if ((((((int)blockIdx.y) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 7)) + (((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) >> 2)) < 32) {
              ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 2048) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 1792)) + ((((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) >> 2) * 256)) + ((((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
          }
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 3; ++ic_chunk_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 660) {
          ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 2640) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 50176) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 165) * 12544)) + (((int)blockIdx.x) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 165) / 55) * 224)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 55) * 4)) + 50176))))[0];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 32) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 128) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 5) {
            if ((((((int)blockIdx.y) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 7)) + (((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) >> 2)) < 32) {
                ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 512) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 2048) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 1792)) + ((((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) >> 2) * 256)) + (ic_chunk_outer_outer * 64)) + ((((((int)threadIdx.z) * 7) + (((int)threadIdx.x) >> 2)) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 64))))[0];
            }
          }
        }
      }
    }
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      for (int oh = 0; oh < 2; ++oh) {
        for (int oc_block = 0; oc_block < 4; ++oc_block) {
          compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer & 1) * 2640) + (ic_chunk_inner * 660)) + (oh * 440)) + (((int)threadIdx.x) * 8)))))[0], ((int*)((signed char*)placeholder_shared + ((((((ic_chunk_outer_outer & 1) * 512) + (((int)threadIdx.z) * 64)) + (ic_chunk_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
          compute[((((oh * 4) + oc_block) + 8))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer & 1) * 2640) + (ic_chunk_inner * 660)) + (oh * 440)) + (((int)threadIdx.x) * 8)))))[0], ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer & 1) * 512) + (((int)threadIdx.z) * 64)) + (ic_chunk_inner * 16)) + (oc_block * 4)) + 256))))[0], compute[((((oh * 4) + oc_block) + 8))]);
        }
      }
    }
  }
  __syncthreads();
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 4; ++ic_chunk_inner1) {
    for (int oh1 = 0; oh1 < 2; ++oh1) {
      for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
        compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((ic_chunk_inner1 * 660) + (oh1 * 440)) + (((int)threadIdx.x) * 8)) + 2640))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 64) + (ic_chunk_inner1 * 16)) + (oc_block1 * 4)) + 512))))[0], compute[(((oh1 * 4) + oc_block1))]);
        compute[((((oh1 * 4) + oc_block1) + 8))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((ic_chunk_inner1 * 660) + (oh1 * 440)) + (((int)threadIdx.x) * 8)) + 2640))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 64) + (ic_chunk_inner1 * 16)) + (oc_block1 * 4)) + 768))))[0], compute[((((oh1 * 4) + oc_block1) + 8))]);
      }
    }
  }
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 2; ++ax2_inner_inner_inner) {
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_relu)[(((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.x) * 224)) + (ax2_inner_inner_inner * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 2.086217e-04f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))]) + ((float*)placeholder3)[(((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.x) * 224)) + (ax2_inner_inner_inner * 112)) + (((int)threadIdx.x) * 4)) + ax4))])), (float)(0.000000e+00f));
      ((float*)T_relu)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.x) * 224)) + (ax2_inner_inner_inner * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 12544))] = max((float)((((((float)compute[((((ax2_inner_inner_inner * 4) + ax4) + 8))]) * 2.086217e-04f) + ((float*)placeholder2)[(((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4) + 16))]) + ((float*)placeholder3)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.x) * 224)) + (ax2_inner_inner_inner * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 12544))])), (float)(0.000000e+00f));
    }
  }
}

extern "C" __global__ void fused_nn_dense_add_2_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_add, void* __restrict__ placeholder2) {
  float T_dense_rf[1];
  __shared__ float red_buf0[64];
  __shared__ float T_dense[1];
  T_dense_rf[(0)] = 0.000000e+00f;
  for (int k_outer = 0; k_outer < 8; ++k_outer) {
    T_dense_rf[(0)] = (T_dense_rf[(0)] + (((float*)placeholder)[(((k_outer * 64) + ((int)threadIdx.x)))] * ((float*)placeholder1)[((((((int)blockIdx.x) * 512) + (k_outer * 64)) + ((int)threadIdx.x)))]));
  }
  __syncthreads();
  ((volatile float*)red_buf0)[(((int)threadIdx.x))] = T_dense_rf[(0)];
  __syncthreads();
  if (((int)threadIdx.x) < 32) {
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 32))]);
  }
  __syncthreads();
  if (((int)threadIdx.x) < 16) {
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 16))]);
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 8))]);
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 4))]);
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 2))]);
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = (((volatile float*)red_buf0)[(((int)threadIdx.x))] + ((volatile float*)red_buf0)[((((int)threadIdx.x) + 1))]);
  }
  __syncthreads();
  if (((int)threadIdx.x) == 0) {
    T_dense[(0)] = ((volatile float*)red_buf0)[(0)];
  }
  if (((int)threadIdx.x) == 0) {
    ((float*)T_add)[(((int)blockIdx.x))] = (T_dense[(0)] + ((float*)placeholder2)[(((int)blockIdx.x))]);
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__21_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[8];
  __shared__ int pad_data_shared[512];
  __shared__ int placeholder_shared[2304];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
    compute[((oc_block_init + 4))] = 0;
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 19) {
          ((int*)((signed char*)pad_data_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + ((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 60))))[0] : (int)(int)0);
      }
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 83) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 15; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 19) {
            ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1024) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784)) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3076))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 83) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 4608) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + (ic_chunk_outer_outer * 576)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 576))))[0];
        }
      }
    }
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
            compute[((oc_block + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)) + 64))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[((oc_block + 4))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 4; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1024))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[(oc_block1)]);
          compute[((oc_block1 + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1088))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[((oc_block1 + 4))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((signed char*)T_cast)[((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(ax4)]) * 6.764178e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))])), (float)(0.000000e+00f)) * 4.371008e+00f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    ((signed char*)T_cast)[(((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 56))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[((ax4 + 4))]) * 6.764178e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))])), (float)(0.000000e+00f)) * 4.371008e+00f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_2_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2) {
  int compute[32];
  __shared__ int placeholder_shared[896];
  __shared__ int pad_data_shared[259];
  for (int oc_chunk_init = 0; oc_chunk_init < 2; ++oc_chunk_init) {
    for (int oh_init = 0; oh_init < 4; ++oh_init) {
      for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
        compute[((((oc_chunk_init * 16) + (oh_init * 4)) + oc_block_init))] = 0;
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) < 112) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) < 448) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 28) {
            ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 512) + (((int)threadIdx.z) * 64)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) / 7) * 784) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) % 7) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int kh_outer_outer = 0; kh_outer_outer < 6; ++kh_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) < 259) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 17) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 512) + (((int)threadIdx.z) * 64)) + (((int)threadIdx.x) * 4)))))[0] = (((((3 <= ((((((int)blockIdx.x) / 7) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) / 37)) + kh_outer_outer)) && (((((((int)blockIdx.x) / 7) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) / 37)) + kh_outer_outer) < 227)) && (3 <= (((((int)blockIdx.x) % 7) * 32) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37)))) && ((((((int)blockIdx.x) % 7) * 32) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37)) < 227)) ? (int)((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.x) / 7) * 7168) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) / 37) * 896)) + (kh_outer_outer * 896)) + ((((int)blockIdx.x) % 7) * 128)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37) * 4)) - 2700))))[0] : (int)(int)0);
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) < 112) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) < 448) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 28) {
              ((int*)((signed char*)placeholder_shared + (((((((kh_outer_outer + 1) & 1) * 1792) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 512)) + (((int)threadIdx.z) * 64)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + ((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) / 7) * 784) + (kh_outer_outer * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 32) + (((int)threadIdx.z) * 4)) + (((int)threadIdx.x) >> 2)) % 7) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 112))))[0];
          }
        }
      }
    }
    __syncthreads();
    for (int kw_inner = 0; kw_inner < 7; ++kw_inner) {
      for (int oc_chunk = 0; oc_chunk < 2; ++oc_chunk) {
        for (int oh = 0; oh < 4; ++oh) {
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[((((oc_chunk * 16) + (oh * 4)) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((oh * 296) + (((int)threadIdx.x) * 8)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((kh_outer_outer & 1) * 1792) + (((int)threadIdx.z) * 224)) + (oc_chunk * 112)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[((((oc_chunk * 16) + (oh * 4)) + oc_block))]);
          }
        }
      }
    }
  }
  __syncthreads();
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) < 259) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 17) {
          ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 512) + (((int)threadIdx.z) * 64)) + (((int)threadIdx.x) * 4)))))[0] = (((((((((int)blockIdx.x) / 7) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) / 37)) < 221) && (3 <= (((((int)blockIdx.x) % 7) * 32) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37)))) && ((((((int)blockIdx.x) % 7) * 32) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37)) < 227)) ? (int)((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.x) / 7) * 7168) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) / 37) * 896)) + ((((int)blockIdx.x) % 7) * 128)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 128) + (((int)threadIdx.z) * 16)) + ((int)threadIdx.x)) % 37) * 4)) + 2676))))[0] : (int)(int)0);
      }
    }
  }
  __syncthreads();
  for (int kw_inner1 = 0; kw_inner1 < 7; ++kw_inner1) {
    for (int oc_chunk1 = 0; oc_chunk1 < 2; ++oc_chunk1) {
      for (int oh1 = 0; oh1 < 4; ++oh1) {
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[((((oc_chunk1 * 16) + (oh1 * 4)) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((oh1 * 296) + (((int)threadIdx.x) * 8)) + (kw_inner1 * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 224) + (oc_chunk1 * 112)) + (kw_inner1 * 16)) + (oc_block1 * 4)))))[0], compute[((((oc_chunk1 * 16) + (oh1 * 4)) + oc_block1))]);
        }
      }
    }
  }
  for (int ax1_inner_inner_inner = 0; ax1_inner_inner_inner < 2; ++ax1_inner_inner_inner) {
    for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
      for (int ax4 = 0; ax4 < 4; ++ax4) {
        ((float*)T_relu)[((((((((((int)threadIdx.z) * 100352) + (ax1_inner_inner_inner * 50176)) + ((((int)blockIdx.x) / 7) * 1792)) + (ax2_inner_inner_inner * 448)) + ((((int)blockIdx.x) % 7) * 64)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)(((((float)compute[((((ax1_inner_inner_inner * 16) + (ax2_inner_inner_inner * 4)) + ax4))]) * 3.420994e-05f) + ((float*)placeholder2)[((((((int)threadIdx.z) * 8) + (ax1_inner_inner_inner * 4)) + ax4))])), (float)(0.000000e+00f));
      }
    }
  }
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_20_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 2.461749e+00f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_27_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 3.938798e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_22_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int placeholder_shared[576];
  __shared__ int pad_data_shared[360];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 11) {
            ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 7; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 13) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + ((((((((ic_chunk_outer_outer * 25088) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) - 228))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 11) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (ic_chunk_outer_outer * 288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
          #pragma unroll
          for (int oh = 0; oh < 4; ++oh) {
            #pragma unroll
            for (int oc_block = 0; oc_block < 4; ++oc_block) {
              compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner * 720) + (oh * 120)) + (kh_inner * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
            }
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 13) {
          ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + (((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) + 175388))))[0] : (int)(int)0);
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
        #pragma unroll
        for (int oh1 = 0; oh1 < 4; ++oh1) {
          #pragma unroll
          for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
            compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 720) + (oh1 * 120)) + (kh_inner1 * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(((oh1 * 4) + oc_block1))]);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_relu)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((float*)placeholder2)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] + ((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 1.386576e-04f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))]))), (float)(0.000000e+00f));
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__17_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int placeholder_shared[576];
  __shared__ int pad_data_shared[360];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 11) {
            ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 7; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 13) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + ((((((((ic_chunk_outer_outer * 25088) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) - 228))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 11) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (ic_chunk_outer_outer * 288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
          #pragma unroll
          for (int oh = 0; oh < 4; ++oh) {
            #pragma unroll
            for (int oc_block = 0; oc_block < 4; ++oc_block) {
              compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner * 720) + (oh * 120)) + (kh_inner * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
            }
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 13) {
          ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + (((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) + 175388))))[0] : (int)(int)0);
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
        #pragma unroll
        for (int oh1 = 0; oh1 < 4; ++oh1) {
          #pragma unroll
          for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
            compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 720) + (oh1 * 120)) + (kh_inner1 * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(((oh1 * 4) + oc_block1))]);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((signed char*)T_cast)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 6.221216e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 4.040347e+00f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_24_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 3.578871e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_25_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 2.879392e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_28_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  if (((((int)blockIdx.x) * 256) + (((int)threadIdx.x) >> 2)) < 6272) {
    if (((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)) < 25088) {
      ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 2.156147e+00f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_17_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[4];
  __shared__ int pad_data_shared[104];
  __shared__ int placeholder_shared[256];
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
  }
  if (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) < 52) {
      ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.z) * 28) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) / 13) * 784) + (((int)blockIdx.x) * 112)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) % 13) * 4)))))[0];
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) < 128) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 19) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) >> 4) * 64) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) >> 2)) & 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((int)blockIdx.y) * 8192) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) >> 4) * 1024)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) >> 2)) & 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 15; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) < 52) {
        ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 208) + (((int)threadIdx.z) * 28)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 3136) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) / 13) * 784)) + (((int)blockIdx.x) * 112)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) % 13) * 4)) + 3136))))[0];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) < 128) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 19) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 512) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) >> 4) * 64)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) >> 2)) & 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 8192) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.x)) >> 4) * 1024)) + (ic_chunk_outer_outer * 64)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) >> 2)) & 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.x)) & 3) * 4)) + 64))))[0];
        }
      }
    }
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      for (int oc_block = 0; oc_block < 4; ++oc_block) {
        compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((ic_chunk_outer_outer & 1) * 208) + (ic_chunk_inner * 52)) + (((int)threadIdx.x) * 8)))))[0], ((int*)((signed char*)placeholder_shared + ((((((ic_chunk_outer_outer & 1) * 512) + (((int)threadIdx.z) * 64)) + (ic_chunk_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
      }
    }
  }
  __syncthreads();
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 4; ++ic_chunk_inner1) {
    for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
      compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((ic_chunk_inner1 * 52) + (((int)threadIdx.x) * 8)) + 208))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 64) + (ic_chunk_inner1 * 16)) + (oc_block1 * 4)) + 512))))[0], compute[(oc_block1)]);
    }
  }
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((float*)T_relu)[((((((((int)blockIdx.y) * 1568) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.x) * 28)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((((float)compute[(ax4)]) * 5.475191e-02f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))]) + ((float*)placeholder3)[((((((((int)blockIdx.y) * 1568) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.x) * 28)) + (((int)threadIdx.x) * 4)) + ax4))])), (float)(0.000000e+00f));
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_8_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_add, void* __restrict__ placeholder2) {
  int compute[4];
  __shared__ int pad_data_shared[324];
  __shared__ int placeholder_shared[576];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
  }
  if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
    if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
        ((int*)((signed char*)pad_data_shared + ((((((int)threadIdx.z) * 196) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + (((((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) - 32))))[0] : (int)(int)0);
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 6) {
            ((int*)((signed char*)placeholder_shared + (((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 63; ++ic_chunk_outer_outer) {
    __syncthreads();
    if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
      if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
          ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 648) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 392) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196)) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) + 360))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 6) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (ic_chunk_outer_outer * 288)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    #pragma unroll
    for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
      #pragma unroll
      for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 648) + (ic_chunk_inner * 324)) + (((int)threadIdx.y) * 36)) + (kh_inner * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
    #pragma unroll
    for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_inner1 * 324) + (((int)threadIdx.y) * 36)) + (kh_inner1 * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 648))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(oc_block1)]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((float*)T_add)[((((((((int)blockIdx.y) * 784) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)) + ax4))] = ((((float)compute[(ax4)]) * 1.372629e-04f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))]);
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__22_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[4];
  __shared__ int pad_data_shared[90];
  __shared__ int placeholder_shared[576];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
  }
  if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 45) {
    if (((int)threadIdx.z) < 7) {
        ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.z) * 28) + (((int)threadIdx.y) * 4)))))[0] = (((3 <= ((((int)threadIdx.z) * 7) + ((int)threadIdx.y))) && (1 <= ((((int)blockIdx.x) * 2) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) % 3)))) ? (int)((int*)((signed char*)placeholder + ((((((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) / 3) * 56) + (((int)blockIdx.x) * 8)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) % 3) * 4)) - 60))))[0] : (int)(int)0);
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 288) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 42) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) / 36) * 9216)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 63; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 45) {
      if (((int)threadIdx.z) < 7) {
          ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 180) + (((int)threadIdx.z) * 28)) + (((int)threadIdx.y) * 4)))))[0] = (((3 <= ((((int)threadIdx.z) * 7) + ((int)threadIdx.y))) && (1 <= ((((int)blockIdx.x) * 2) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) % 3)))) ? (int)((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 784) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) / 3) * 56)) + (((int)blockIdx.x) * 8)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) % 3) * 4)) + 724))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 42) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) / 36) * 9216)) + (ic_chunk_outer_outer * 144)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 14) + (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) & 3) * 4)) + 144))))[0];
        }
      }
    }
    #pragma unroll
    for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int oc_block = 0; oc_block < 4; ++oc_block) {
          compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer & 1) * 180) + (((int)threadIdx.y) * 24)) + (kh_inner * 12)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
        compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((int)threadIdx.y) * 24) + (kh_inner1 * 12)) + (kw_inner1 * 4)) + 180))))[0], ((int*)((signed char*)placeholder_shared + ((((((((int)threadIdx.z) * 144) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(oc_block1)]);
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((signed char*)T_cast)[((((((((int)blockIdx.y) * 1568) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(ax4)]) * 6.869003e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 7.446812e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__18_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[8];
  __shared__ int pad_data_shared[580];
  __shared__ int placeholder_shared[2304];
  for (int oh_init = 0; oh_init < 2; ++oh_init) {
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  for (int ic_chunk_outer = 0; ic_chunk_outer < 4; ++ic_chunk_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 580) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 16) + ((int)threadIdx.z)) < 42) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 896) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = (((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 145) / 29))) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 29)))) ? (int)((int*)((signed char*)placeholder + ((((((((ic_chunk_outer * 50176) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 145) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 145) / 29) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 29) * 4)) - 228))))[0] : (int)(int)0);
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 2304) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 16) + ((int)threadIdx.z)) < 165) {
            ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 144) * 2304)) + (ic_chunk_outer * 576)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
    __syncthreads();
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
          for (int oh = 0; oh < 2; ++oh) {
            for (int oc_block = 0; oc_block < 4; ++oc_block) {
              compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner * 580) + (oh * 232)) + (kh_inner * 116)) + (((int)threadIdx.x) * 8)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((int)threadIdx.z) * 576) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
            }
          }
        }
      }
    }
  }
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 2; ++ax2_inner_inner_inner) {
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((signed char*)T_cast)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 3136)) + ((((int)blockIdx.x) >> 1) * 224)) + (ax2_inner_inner_inner * 112)) + ((((int)blockIdx.x) & 1) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 6.121386e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 64) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 5.916168e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_7_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_add, void* __restrict__ placeholder2) {
  int compute[8];
  __shared__ int pad_data_shared[512];
  __shared__ int placeholder_shared[2304];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
    compute[((oc_block_init + 4))] = 0;
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 19) {
          ((int*)((signed char*)pad_data_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + ((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 60))))[0] : (int)(int)0);
      }
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 83) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 15; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 19) {
            ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1024) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784)) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3076))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 83) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 4608) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + (ic_chunk_outer_outer * 576)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 576))))[0];
        }
      }
    }
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
            compute[((oc_block + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)) + 64))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[((oc_block + 4))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 4; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1024))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[(oc_block1)]);
          compute[((oc_block1 + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1088))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[((oc_block1 + 4))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((float*)T_add)[((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = ((((float)compute[(ax4)]) * 9.887036e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))]);
    ((float*)T_add)[(((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 56))] = ((((float)compute[((ax4 + 4))]) * 9.887036e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))]);
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_19_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[8];
  __shared__ int pad_data_shared[432];
  __shared__ int placeholder_shared[1024];
  for (int oc_chunk_init = 0; oc_chunk_init < 2; ++oc_chunk_init) {
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oc_chunk_init * 4) + oc_block_init))] = 0;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 216) {
        ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 27) * 3136) + (((int)blockIdx.x) * 224)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 27) * 4)))))[0];
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 512) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 37) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) >> 5) * 128) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) & 7) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((int)blockIdx.y) * 8192) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) >> 5) * 512)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) & 7) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 3; ++ic_chunk_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 216) {
          ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 864) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 25088) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 27) * 3136)) + (((int)blockIdx.x) * 224)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 27) * 4)) + 25088))))[0];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 512) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 37) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 2048) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) >> 5) * 128)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) & 7) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 8192) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) >> 5) * 512)) + (ic_chunk_outer_outer * 128)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) & 7) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 128))))[0];
        }
      }
    }
    for (int ic_chunk_inner = 0; ic_chunk_inner < 8; ++ic_chunk_inner) {
      for (int oc_chunk = 0; oc_chunk < 2; ++oc_chunk) {
        for (int oc_block = 0; oc_block < 4; ++oc_block) {
          compute[(((oc_chunk * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((ic_chunk_outer_outer & 1) * 864) + (ic_chunk_inner * 108)) + (((int)threadIdx.x) * 8)))))[0], ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer & 1) * 2048) + (((int)threadIdx.z) * 256)) + (oc_chunk * 128)) + (ic_chunk_inner * 16)) + (oc_block * 4)))))[0], compute[(((oc_chunk * 4) + oc_block))]);
        }
      }
    }
  }
  __syncthreads();
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 8; ++ic_chunk_inner1) {
    for (int oc_chunk1 = 0; oc_chunk1 < 2; ++oc_chunk1) {
      for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
        compute[(((oc_chunk1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((ic_chunk_inner1 * 108) + (((int)threadIdx.x) * 8)) + 864))))[0], ((int*)((signed char*)placeholder_shared + ((((((((int)threadIdx.z) * 256) + (oc_chunk1 * 128)) + (ic_chunk_inner1 * 16)) + (oc_block1 * 4)) + 2048))))[0], compute[(((oc_chunk1 * 4) + oc_block1))]);
      }
    }
  }
  for (int ax1_inner_inner_inner = 0; ax1_inner_inner_inner < 2; ++ax1_inner_inner_inner) {
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_relu)[(((((((((int)blockIdx.y) * 12544) + (((int)threadIdx.z) * 1568)) + (ax1_inner_inner_inner * 784)) + (((int)blockIdx.x) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((((float)compute[(((ax1_inner_inner_inner * 4) + ax4))]) * 2.299786e-02f) + ((float*)placeholder2)[(((((((int)blockIdx.y) * 64) + (((int)threadIdx.z) * 8)) + (ax1_inner_inner_inner * 4)) + ax4))]) + ((float*)placeholder3)[(((((((((int)blockIdx.y) * 12544) + (((int)threadIdx.z) * 1568)) + (ax1_inner_inner_inner * 784)) + (((int)blockIdx.x) * 56)) + (((int)threadIdx.x) * 4)) + ax4))])), (float)(0.000000e+00f));
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_divide_add_round_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_round, void* __restrict__ placeholder2, void* __restrict__ placeholder3, void* __restrict__ placeholder4) {
  int compute[16];
  __shared__ int placeholder_shared[576];
  __shared__ int pad_data_shared[360];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 11) {
            ((int*)((signed char*)placeholder_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 7; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 13) {
            ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + ((((((((ic_chunk_outer_outer * 25088) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) - 228))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) < 72) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 288) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 11) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 448)) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = ((int*)((signed char*)placeholder + (((((((((int)blockIdx.y) * 9216) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) / 18) * 2304)) + (ic_chunk_outer_outer * 288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + (((int)threadIdx.x) >> 2)) % 18) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
          #pragma unroll
          for (int oh = 0; oh < 4; ++oh) {
            #pragma unroll
            for (int oc_block = 0; oc_block < 4; ++oc_block) {
              compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner * 720) + (oh * 120)) + (kh_inner * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
            }
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) < 360) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 13) {
          ((int*)((signed char*)pad_data_shared + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 448) + (((int)threadIdx.z) * 112)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30)) < 57)) && (1 <= (((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)))) && ((((((int)blockIdx.x) & 1) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30)) < 57)) ? (int)((int*)((signed char*)placeholder1 + (((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) / 180) * 12544) + ((((int)blockIdx.x) >> 1) * 896)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 180) / 30) * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.x)) % 30) * 4)) + 175388))))[0] : (int)(int)0);
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
        #pragma unroll
        for (int oh1 = 0; oh1 < 4; ++oh1) {
          #pragma unroll
          for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
            compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 720) + (oh1 * 120)) + (kh_inner1 * 120)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(((oh1 * 4) + oc_block1))]);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_round)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = roundf(((max((float)((((float*)placeholder2)[((((((((((int)blockIdx.y) * 50176) + (((int)threadIdx.z) * 12544)) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner_inner_inner * 224)) + ((((int)blockIdx.x) & 1) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] + ((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 3.298299e-02f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))]))), (float)(0.000000e+00f)) * 2.426362e+01f) + ((float*)placeholder4)[(0)]));
    }
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_20_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int pad_data_shared[192];
  __shared__ int placeholder_shared[288];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
    if (((int)threadIdx.z) < 7) {
        ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.z) * 56) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((((int)blockIdx.x) >> 1) * 448) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 116))))[0] : (int)(int)0);
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 31; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
      if (((int)threadIdx.z) < 7) {
          ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 384) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + ((((int)blockIdx.x) >> 1) * 448)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3020))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 21) {
            ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + (ic_chunk_outer_outer * 144)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int oh = 0; oh < 4; ++oh) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 384) + (oh * 64)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 21) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 4464))))[0];
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int oh1 = 0; oh1 < 4; ++oh1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((oh1 * 64) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 384))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)))))[0], compute[(((oh1 * 4) + oc_block1))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_relu)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + ((((int)blockIdx.x) >> 1) * 448)) + (ax2_inner_inner_inner * 112)) + ((((int)blockIdx.x) & 1) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((float*)placeholder2)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + ((((int)blockIdx.x) >> 1) * 448)) + (ax2_inner_inner_inner * 112)) + ((((int)blockIdx.x) & 1) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] + ((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 1.310110e-04f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))]))), (float)(0.000000e+00f));
    }
  }
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_26_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 3.980142e+01f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_18_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[8];
  __shared__ int pad_data_shared[512];
  __shared__ int placeholder_shared[2304];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
    compute[((oc_block_init + 4))] = 0;
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 19) {
          ((int*)((signed char*)pad_data_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + ((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 60))))[0] : (int)(int)0);
      }
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.y)) < 83) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 15; ++ic_chunk_outer_outer) {
    __syncthreads();
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 256) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 19) {
            ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1024) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 64)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)))))[0] = (((((1 <= ((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3))) && (((((int)blockIdx.x) * 2) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3)) < 15)) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15))) && ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) < 15)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) >> 6) * 784)) + (((int)blockIdx.x) * 112)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_outer_fused_outer_outer_outer1 * 7) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 4)) & 3) * 56)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3076))))[0] : (int)(int)0);
        }
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 1152) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.y)) < 83) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 4608) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 144) * 9216)) + (ic_chunk_outer_outer * 576)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 144) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 576))))[0];
        }
      }
    }
    #pragma unroll
    for (int ic_chunk_inner = 0; ic_chunk_inner < 4; ++ic_chunk_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
            compute[((oc_block + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 1024) + (ic_chunk_inner * 256)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)) + 64))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 4608) + (((int)threadIdx.y) * 576)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[((oc_block + 4))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 4; ++ic_chunk_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1024))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[(oc_block1)]);
          compute[((oc_block1 + 4))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((ic_chunk_inner1 * 256) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 1088))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.y) * 576) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 4608))))[0], compute[((oc_block1 + 4))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((float*)T_relu)[((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((float*)placeholder2)[((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4))] + ((((float)compute[(ax4)]) * 2.007595e-02f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))]))), (float)(0.000000e+00f));
    ((float*)T_relu)[(((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 56))] = max((float)((((float*)placeholder2)[(((((((((int)blockIdx.y) * 6272) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (((int)threadIdx.x) * 4)) + ax4) + 56))] + ((((float)compute[((ax4 + 4))]) * 2.007595e-02f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.y) * 4)) + ax4))]))), (float)(0.000000e+00f));
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__19_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[16];
  __shared__ int pad_data_shared[192];
  __shared__ int placeholder_shared[288];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
    if (((int)threadIdx.z) < 7) {
        ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.z) * 56) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((((int)blockIdx.x) >> 1) * 448) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 116))))[0] : (int)(int)0);
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 31; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
      if (((int)threadIdx.z) < 7) {
          ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 384) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + ((((int)blockIdx.x) >> 1) * 448)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3020))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 21) {
            ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + (ic_chunk_outer_outer * 144)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int oh = 0; oh < 4; ++oh) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 384) + (oh * 64)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 21) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 4464))))[0];
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int oh1 = 0; oh1 < 4; ++oh1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((oh1 * 64) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 384))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)))))[0], compute[(((oh1 * 4) + oc_block1))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((signed char*)T_cast)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + ((((int)blockIdx.x) >> 1) * 448)) + (ax2_inner_inner_inner * 112)) + ((((int)blockIdx.x) & 1) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 1.082206e-04f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))])), (float)(0.000000e+00f)) * 5.238856e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_nn_max_pool2d_2_kernel0(void* __restrict__ placeholder, void* __restrict__ tensor) {
  float tensor_local[1];
  tensor_local[(0)] = -3.402823e+38f;
  for (int rv = 0; rv < 3; ++rv) {
    for (int rv1 = 0; rv1 < 3; ++rv1) {
      tensor_local[(0)] = max((float)(tensor_local[(0)]), (float)((((1 <= ((((((((int)blockIdx.x) * 256) + (((int)threadIdx.x) >> 2)) % 3136) / 56) * 2) + rv)) && (1 <= (((((((int)blockIdx.x) * 256) + (((int)threadIdx.x) >> 2)) % 56) * 2) + rv1))) ? (float)((float*)placeholder)[((((((((((((int)blockIdx.x) * 256) + (((int)threadIdx.x) >> 2)) / 56) * 896) + (rv * 448)) + ((((((int)blockIdx.x) * 256) + (((int)threadIdx.x) >> 2)) % 56) * 8)) + (rv1 * 4)) + (((int)threadIdx.x) & 3)) - 452))] : (float)-3.402823e+38f)));
    }
  }
  ((float*)tensor)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = tensor_local[(0)];
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_nn_relu_divide_add_round_cast_cl_16286804049590463984__20_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_cast, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[8];
  __shared__ int pad_data_shared[290];
  __shared__ int placeholder_shared[1152];
  #pragma unroll
  for (int oh_init = 0; oh_init < 2; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  if (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) < 145) {
    if (((int)threadIdx.y) < 11) {
        ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 4)))))[0] = (((1 <= ((((int)blockIdx.x) * 4) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) / 29))) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) % 29))) ? (int)((int*)((signed char*)placeholder + (((((((int)blockIdx.x) * 448) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) / 29) * 112)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) % 29) * 4)) - 116))))[0] : (int)(int)0);
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 576) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 16) + ((int)threadIdx.y)) < 42) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 56) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 31; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) < 145) {
      if (((int)threadIdx.y) < 11) {
          ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 580) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 4)))))[0] = (((1 <= ((((int)blockIdx.x) * 4) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) / 29))) && (1 <= (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) % 29))) ? (int)((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 3136) + (((int)blockIdx.x) * 448)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) / 29) * 112)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) % 29) * 4)) + 3020))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) < 576) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 16) + ((int)threadIdx.y)) < 42) {
            ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 2304) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + (ic_chunk_outer_outer * 144)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 224) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 56) + (((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.y) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 144))))[0];
        }
      }
    }
    #pragma unroll
    for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
      #pragma unroll
      for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
        #pragma unroll
        for (int oh = 0; oh < 2; ++oh) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 580) + (oh * 232)) + (kh_inner * 116)) + (((int)threadIdx.x) * 8)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer & 1) * 2304) + (((int)threadIdx.y) * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
    #pragma unroll
    for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
      #pragma unroll
      for (int oh1 = 0; oh1 < 2; ++oh1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((oh1 * 232) + (kh_inner1 * 116)) + (((int)threadIdx.x) * 8)) + (kw_inner1 * 4)) + 580))))[0], ((int*)((signed char*)placeholder_shared + ((((((((int)threadIdx.y) * 144) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 2304))))[0], compute[(((oh1 * 4) + oc_block1))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 2; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((signed char*)T_cast)[(((((((((int)blockIdx.y) * 12544) + (((int)threadIdx.y) * 784)) + (((int)blockIdx.x) * 112)) + (ax2_inner_inner_inner * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = ((signed char)max((int)(min((int)(((int)roundf(((max((float)(((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 6.005610e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 64) + (((int)threadIdx.y) * 4)) + ax4))])), (float)(0.000000e+00f)) * 5.611094e+01f) + ((float*)placeholder3)[(0)])))), (int)(127))), (int)(-128)));
    }
  }
}

extern "C" __global__ void fused_divide_add_round_cast_clip_cast_21_kernel0(void* __restrict__ T_cast, void* __restrict__ placeholder, void* __restrict__ placeholder1) {
  ((signed char*)T_cast)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] = ((signed char)max((int)(min((int)(((int)roundf(((((float*)placeholder)[(((((int)blockIdx.x) * 1024) + ((int)threadIdx.x)))] * 1.799620e+00f) + ((float*)placeholder1)[(0)])))), (int)(127))), (int)(-128)));
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_add_nn_relu_16_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_relu, void* __restrict__ placeholder2, void* __restrict__ placeholder3) {
  int compute[4];
  __shared__ int pad_data_shared[324];
  __shared__ int placeholder_shared[576];
  #pragma unroll
  for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
    compute[(oc_block_init)] = 0;
  }
  if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
    if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
        ((int*)((signed char*)pad_data_shared + ((((((int)threadIdx.z) * 196) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + (((((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) - 32))))[0] : (int)(int)0);
    }
  }
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
    if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 4) + ((int)threadIdx.z)) < 6) {
            ((int*)((signed char*)placeholder_shared + (((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 63; ++ic_chunk_outer_outer) {
    __syncthreads();
    if ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 162) {
      if (((((int)threadIdx.z) * 7) + ((int)threadIdx.y)) < 24) {
          ((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 648) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)))))[0] = (((((9 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81)) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) < 72)) && (1 <= ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9))) && (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) < 8)) ? (int)((int*)((signed char*)placeholder + ((((((ic_chunk_outer_outer * 392) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 81) * 196)) + ((((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 81) / 9) * 28)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 9) * 4)) + 360))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
      if (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) < 288) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((int)threadIdx.z) * 7)) + ((int)threadIdx.y)) < 42) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 4) + ((int)threadIdx.z)) < 6) {
              ((int*)((signed char*)placeholder_shared + (((((((ic_chunk_outer_outer + 1) & 1) * 1152) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + ((((((((((int)blockIdx.y) * 73728) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) / 72) * 18432)) + (ic_chunk_outer_outer * 288)) + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 196) + (((int)threadIdx.z) * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) % 72) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 49) + ((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + (((((((int)threadIdx.z) * 49) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)) & 3) * 4)) + 288))))[0];
          }
        }
      }
    }
    #pragma unroll
    for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
      #pragma unroll
      for (int ic_chunk_inner = 0; ic_chunk_inner < 2; ++ic_chunk_inner) {
        #pragma unroll
        for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(oc_block)] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((((ic_chunk_outer_outer & 1) * 648) + (ic_chunk_inner * 324)) + (((int)threadIdx.y) * 36)) + (kh_inner * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + ((((((((ic_chunk_outer_outer & 1) * 1152) + (((int)threadIdx.z) * 288)) + (ic_chunk_inner * 144)) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(oc_block)]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
    #pragma unroll
    for (int ic_chunk_inner1 = 0; ic_chunk_inner1 < 2; ++ic_chunk_inner1) {
      #pragma unroll
      for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(oc_block1)] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_inner1 * 324) + (((int)threadIdx.y) * 36)) + (kh_inner1 * 36)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 648))))[0], ((int*)((signed char*)placeholder_shared + (((((((((int)threadIdx.z) * 288) + (ic_chunk_inner1 * 144)) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)) + 1152))))[0], compute[(oc_block1)]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax4 = 0; ax4 < 4; ++ax4) {
    ((float*)T_relu)[((((((((int)blockIdx.y) * 784) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)) + ax4))] = max((float)((((float*)placeholder2)[((((((((int)blockIdx.y) * 784) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)) + ax4))] + ((((float)compute[(ax4)]) * 4.186876e-04f) + ((float*)placeholder3)[((((((int)blockIdx.y) * 16) + (((int)threadIdx.z) * 4)) + ax4))]))), (float)(0.000000e+00f));
  }
}

extern "C" __global__ void fused_nn_conv2d_cast_subtract_cast_multiply_add_6_kernel0(void* __restrict__ placeholder, void* __restrict__ placeholder1, void* __restrict__ T_add, void* __restrict__ placeholder2) {
  int compute[16];
  __shared__ int pad_data_shared[192];
  __shared__ int placeholder_shared[288];
  #pragma unroll
  for (int oh_init = 0; oh_init < 4; ++oh_init) {
    #pragma unroll
    for (int oc_block_init = 0; oc_block_init < 4; ++oc_block_init) {
      compute[(((oh_init * 4) + oc_block_init))] = 0;
    }
  }
  if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
    if (((int)threadIdx.z) < 7) {
        ((int*)((signed char*)pad_data_shared + (((((int)threadIdx.z) * 56) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((((int)blockIdx.x) >> 1) * 448) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) - 116))))[0] : (int)(int)0);
    }
  }
  for (int ic_chunk_outer_outer = 0; ic_chunk_outer_outer < 31; ++ic_chunk_outer_outer) {
    __syncthreads();
    if (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) < 96) {
      if (((int)threadIdx.z) < 7) {
          ((int*)((signed char*)pad_data_shared + ((((((ic_chunk_outer_outer + 1) & 1) * 384) + (((int)threadIdx.z) * 56)) + (((int)threadIdx.x) * 4)))))[0] = (((((1 <= (((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4))) && ((((((int)blockIdx.x) >> 1) * 4) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4)) < 29)) && (1 <= (((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)))) && ((((((int)blockIdx.x) & 1) * 14) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15)) < 29)) ? (int)((int*)((signed char*)placeholder + (((((((ic_chunk_outer_outer * 3136) + ((((int)blockIdx.x) >> 1) * 448)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 4) * 112)) + ((((int)blockIdx.x) & 1) * 56)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 15) * 4)) + 3020))))[0] : (int)(int)0);
      }
    }
    #pragma unroll
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 8) + ((int)threadIdx.z)) < 21) {
            ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + (ic_chunk_outer_outer * 144)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0];
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int kw_inner = 0; kw_inner < 3; ++kw_inner) {
      #pragma unroll
      for (int kh_inner = 0; kh_inner < 3; ++kh_inner) {
        #pragma unroll
        for (int oh = 0; oh < 4; ++oh) {
          #pragma unroll
          for (int oc_block = 0; oc_block < 4; ++oc_block) {
            compute[(((oh * 4) + oc_block))] = __dp4a(((int*)((signed char*)pad_data_shared + (((((((ic_chunk_outer_outer & 1) * 384) + (oh * 64)) + (kh_inner * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner * 4)))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner * 48)) + (kw_inner * 16)) + (oc_block * 4)))))[0], compute[(((oh * 4) + oc_block))]);
          }
        }
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1) {
    if ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) < 288) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 8) + ((int)threadIdx.z)) < 21) {
          ((int*)((signed char*)placeholder_shared + ((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 12) * 48) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)))))[0] = ((int*)((signed char*)placeholder1 + (((((((((int)blockIdx.y) * 36864) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) / 36) * 4608)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 112) + (((int)threadIdx.z) * 14)) + ((int)threadIdx.x)) % 36) / 12) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_ax5_outer_fused_outer_outer_outer1 * 28) + (((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) >> 2)) % 3) * 16)) + ((((((int)threadIdx.z) * 14) + ((int)threadIdx.x)) & 3) * 4)) + 4464))))[0];
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int kw_inner1 = 0; kw_inner1 < 3; ++kw_inner1) {
    #pragma unroll
    for (int kh_inner1 = 0; kh_inner1 < 3; ++kh_inner1) {
      #pragma unroll
      for (int oh1 = 0; oh1 < 4; ++oh1) {
        #pragma unroll
        for (int oc_block1 = 0; oc_block1 < 4; ++oc_block1) {
          compute[(((oh1 * 4) + oc_block1))] = __dp4a(((int*)((signed char*)pad_data_shared + ((((((oh1 * 64) + (kh_inner1 * 64)) + (((int)threadIdx.x) * 4)) + (kw_inner1 * 4)) + 384))))[0], ((int*)((signed char*)placeholder_shared + (((((((int)threadIdx.z) * 144) + (kh_inner1 * 48)) + (kw_inner1 * 16)) + (oc_block1 * 4)))))[0], compute[(((oh1 * 4) + oc_block1))]);
        }
      }
    }
  }
  #pragma unroll
  for (int ax2_inner_inner_inner = 0; ax2_inner_inner_inner < 4; ++ax2_inner_inner_inner) {
    #pragma unroll
    for (int ax4 = 0; ax4 < 4; ++ax4) {
      ((float*)T_add)[((((((((((int)blockIdx.y) * 25088) + (((int)threadIdx.z) * 3136)) + ((((int)blockIdx.x) >> 1) * 448)) + (ax2_inner_inner_inner * 112)) + ((((int)blockIdx.x) & 1) * 56)) + (((int)threadIdx.x) * 4)) + ax4))] = ((((float)compute[(((ax2_inner_inner_inner * 4) + ax4))]) * 9.612082e-05f) + ((float*)placeholder2)[((((((int)blockIdx.y) * 32) + (((int)threadIdx.z) * 4)) + ax4))]);
    }
  }
}

extern "C" __global__ void fused_layout_transform_nn_batch_flatten_kernel0(void* __restrict__ tensor, void* __restrict__ placeholder) {
  if (((int)threadIdx.x) < 512) {
    ((float*)tensor)[(((int)threadIdx.x))] = ((float*)placeholder)[(((int)threadIdx.x))];
  }
}

