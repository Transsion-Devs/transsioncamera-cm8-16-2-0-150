.class public Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCameraPreviewResolutionHeight:I

.field public mCameraPreviewResolutionWidth:I

.field public mCompileEncodeHWBPS:I

.field public mCompileEncodeMode:I

.field public mCompileEncodeSWCRF:I

.field public mCompileEncodeSWCRFPreset:I

.field public mCompileEncodeSWGOP:I

.field public mCompileEncodeSWMaxrate:I

.field public mCompileHwBitrateMode:I

.field public mCompileHwProfile:I

.field public mCompileSWBitrateMode:I

.field public mCompileVideoSWQP:I

.field public mEarphoneEchoAAudio:I

.field public mEarphoneEchoNormal:I

.field public mImportEncodeMode:I

.field public mImportHWEncodeBPS:I

.field public mImportHwBitrateMode:I

.field public mImportHwProfile:I

.field public mImportSWBitrateMode:I

.field public mImportSWEncodeCRF:I

.field public mImportShortEdgeValue:I

.field public mImportVideoSWGop:I

.field public mImportVideoSWMaxrate:I

.field public mImportVideoSWPreset:I

.field public mImportVideoSWQP:I

.field public mRecordCameraCompatLevel:I

.field public mRecordCameraType:I

.field public mRecordEncodeMode:I

.field public mRecordHWEncodeBPS:I

.field public mRecordHwBitrateMode:I

.field public mRecordHwProfile:I

.field public mRecordResolutionHeight:I

.field public mRecordResolutionWidth:I

.field public mRecordSWBitrateMode:I

.field public mRecordSWEncodeCRF:I

.field public mRecordVideoSWGop:I

.field public mRecordVideoSWMaxrate:I

.field public mRecordVideoSWPreset:I

.field public mRecordVideoSWQP:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordCameraType:I

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordCameraCompatLevel:I

    const/16 v1, 0xf

    .line 28
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordSWEncodeCRF:I

    const v2, 0xe4e1c0

    .line 34
    iput v2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordVideoSWMaxrate:I

    const/4 v3, 0x0

    .line 40
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordVideoSWPreset:I

    const/16 v4, 0x23

    .line 46
    iput v4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordVideoSWGop:I

    .line 52
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordVideoSWQP:I

    .line 58
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordSWBitrateMode:I

    const/high16 v5, 0x400000

    .line 64
    iput v5, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordHWEncodeBPS:I

    .line 70
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordEncodeMode:I

    .line 76
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordHwBitrateMode:I

    .line 82
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordHwProfile:I

    const/16 v6, 0x240

    .line 88
    iput v6, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordResolutionWidth:I

    const/16 v7, 0x400

    .line 94
    iput v7, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mRecordResolutionHeight:I

    .line 100
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportSWEncodeCRF:I

    .line 106
    iput v2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportVideoSWMaxrate:I

    .line 112
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportVideoSWPreset:I

    .line 118
    iput v4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportVideoSWGop:I

    .line 124
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportVideoSWQP:I

    .line 130
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportSWBitrateMode:I

    .line 136
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportEncodeMode:I

    .line 142
    iput v5, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportHWEncodeBPS:I

    .line 148
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportHwBitrateMode:I

    .line 154
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportHwProfile:I

    .line 160
    iput v6, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mImportShortEdgeValue:I

    .line 166
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeSWCRF:I

    .line 172
    iput v2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeSWMaxrate:I

    .line 178
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeSWCRFPreset:I

    .line 184
    iput v4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeSWGOP:I

    .line 190
    iput v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileVideoSWQP:I

    .line 196
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileSWBitrateMode:I

    .line 202
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeMode:I

    .line 208
    iput v5, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileEncodeHWBPS:I

    .line 214
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileHwBitrateMode:I

    .line 220
    iput v3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCompileHwProfile:I

    .line 226
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mEarphoneEchoNormal:I

    .line 232
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mEarphoneEchoAAudio:I

    const/16 v0, 0x2d0

    .line 238
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCameraPreviewResolutionWidth:I

    const/16 v0, 0x500

    .line 243
    iput v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/VECloudConfig;->mCameraPreviewResolutionHeight:I

    return-void
.end method
