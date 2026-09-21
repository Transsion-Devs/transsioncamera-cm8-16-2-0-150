.class Lcom/transsion/camera/adapter/CameraParameters2Impl;
.super Lcom/transsion/camera/adapter/CameraParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final REGION_WEIGHT:I

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mActiveArrayRect:Landroid/graphics/Rect;

.field private mArdcGainValue:[I

.field private final mAvailableFaceDetectModes:[I

.field protected mAwbLockDebug:I

.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private mDumpFirstFrameValue:I

.field mExposureValue:[I

.field private final mFovCropRectangle:Landroid/graphics/Rect;

.field private final mFovWideCropRectangle:Landroid/graphics/Rect;

.field private final mFovWideCropRectangle60fps:Landroid/graphics/Rect;

.field private mIsFlashRequiredInAutoMode:Z

.field private mIsoGainValue:[I

.field private mIspGainValue:[I

.field private mIspTuningIndex:[J

.field private mMulitiCropRegionZoomRatio:F

.field private mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field protected final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field private mShutterGainValue:[J

.field private mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 90
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    filled-new-array {v0}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 v0, 0x447a0000    # 1000.0f

    const v1, 0x3cb43958    # 0.022f

    const/4 v2, 0x0

    .line 95
    invoke-static {v2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 9

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters;-><init>()V

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Parameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, -0x1

    .line 88
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getAwbLockDebug(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAwbLockDebug:I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    .line 122
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    .line 123
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    .line 124
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    .line 125
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    .line 126
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 127
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspTuningIndex:[J

    .line 128
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getEnableDumpFirstFrame(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mDumpFirstFrameValue:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    .line 131
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "android.control.zoomRatio"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 132
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "com.mediatek.multicamfeature.multiCamZoomValue"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 138
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 139
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 140
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 141
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setTagValue(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CameraParameters2Impl] cameraid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cs:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_97

    .line 144
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p1, v0, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    goto :goto_a5

    .line 146
    :cond_97
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "CameraParameters2Impl mActiveArraySize is null !!!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 149
    :goto_a5
    invoke-interface {p4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    .line 150
    invoke-interface {p4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovWideCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    .line 151
    invoke-interface {p4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovWideCropRegion60(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle60fps:Landroid/graphics/Rect;

    .line 152
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 153
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    .line 154
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    return-void
.end method

.method private checkPostAlgo(II)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_fe

    goto/16 :goto_d5

    .line 833
    :pswitch_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    if-eqz p1, :cond_19

    array-length p2, p1

    if-lez p2, :cond_19

    aget p1, p1, v2

    if-le p1, v1, :cond_19

    .line 834
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 836
    :cond_19
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 784
    :pswitch_20
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    if-eqz p1, :cond_d5

    array-length p2, p1

    if-lez p2, :cond_d5

    .line 785
    aget p2, p1, v2

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 786
    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    add-int/lit8 v3, p2, 0x1

    .line 788
    invoke-static {p1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v3, p2, [I

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v4, v1

    .line 790
    invoke-static {p1, v4, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->combineTo64Bit([I[I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    .line 792
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, v1

    .line 793
    invoke-static {p1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v3, p2, [I

    mul-int/lit8 v4, p2, 0x5

    add-int/2addr v4, v1

    .line 795
    invoke-static {p1, v4, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->combineTo64Bit([I[I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspTuningIndex:[J

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    mul-int/lit8 p0, p2, 0x3

    add-int/2addr p0, v1

    .line 798
    invoke-static {p1, p0, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 830
    :pswitch_7a
    new-array p1, v0, [I

    fill-array-data p1, :array_11a

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 775
    :pswitch_82
    new-array p1, p2, [I

    .line 776
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 777
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 812
    :pswitch_8a
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    if-eqz p1, :cond_d6

    array-length p2, p1

    if-lez p2, :cond_d6

    .line 813
    aget p1, p1, v2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    .line 814
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    .line 815
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 816
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    move p1, v2

    .line 817
    :goto_a4
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    aget v0, p2, v2

    if-ge p1, v0, :cond_d5

    .line 818
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    add-int/lit8 v4, p1, 0x1

    aget v5, p2, v4

    int-to-long v5, v5

    aput-wide v5, v3, p1

    .line 819
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    aget v0, p2, v0

    aput v0, v3, p1

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v3, p2, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    add-int/2addr v3, v1

    aget v3, p2, v3

    aput v3, v0, p1

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v3, p2, v2

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, p1

    add-int/2addr v3, v1

    aget p2, p2, v3

    aput p2, v0, p1

    move p1, v4

    goto :goto_a4

    :cond_d5
    :goto_d5
    return-void

    .line 824
    :cond_d6
    new-array p1, v0, [I

    fill-array-data p1, :array_12e

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 809
    :pswitch_de
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoFrameInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 806
    :pswitch_e6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightAeExpoInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 802
    :pswitch_ee
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHDRAeExpoInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 781
    :pswitch_f6
    filled-new-array {v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_ee
        :pswitch_f6
        :pswitch_e6
        :pswitch_de
        :pswitch_8a
        :pswitch_82
        :pswitch_7a
        :pswitch_e6
        :pswitch_20
        :pswitch_9
        :pswitch_7a
    .end packed-switch

    :array_11a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        -0x4
    .end array-data
.end method

.method private closetFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1911
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1913
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "off"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private combineTo64Bit([I[I)[J
    .registers 11

    .line 864
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_20

    .line 868
    array-length p0, p1

    .line 869
    new-array v0, p0, [J

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p0, :cond_1f

    .line 873
    aget v2, p2, v1

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    aget v4, p1, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    return-object v0

    .line 865
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays must have the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isPicTraceMode(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 2781
    :cond_4
    const-string/jumbo v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "flowingwater"

    .line 2782
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "lightpainting"

    .line 2783
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static isStillCaptureTemplate(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne v0, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private projectSupportISZ()Z
    .registers 3

    .line 1183
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVsdofLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result v0

    if-ne v0, v1, :cond_1c

    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isISZSupport()Z

    move-result p0

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .registers 15

    .line 2337
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2338
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    if-eqz p3, :cond_1c

    .line 2341
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 2342
    invoke-static {p4, v0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p4

    .line 2347
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v0, 0x0

    if-nez p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    move p1, v0

    .line 2349
    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 2350
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/SettingInfo$Area;

    if-eqz v1, :cond_49

    if-nez p4, :cond_39

    goto :goto_49

    .line 2354
    :cond_39
    iget-object v1, v1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2, p4}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2356
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sget v3, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, p3, v0

    goto :goto_55

    .line 2352
    :cond_49
    :goto_49
    new-instance v4, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v4, p3, v0

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_58
    return-object p3

    :cond_59
    return-object v0
.end method

.method private updateAIRawLiteMotionDetectionValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2928
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawLiteMotionDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAIRawLiteMotionDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAbeHdrCheckMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2621
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAbeHdrCheckMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAbeHdrCheckMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAbeHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_16

    .line 2604
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_16

    .line 2605
    :cond_10
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 2606
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    :cond_1d
    const/4 p2, 0x0

    .line 2609
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAbeHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2522
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getActivityOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setActivityOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAdrcGainValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2168
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAdrcgainValue()F

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAdrcGainValue(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateAfFf2In1Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2289
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAfFfMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAfFfMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2449
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiMoonMode()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2674
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_31

    .line 2675
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 2676
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 2677
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2678
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2680
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2683
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiShutterMorpho(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2688
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMorpho()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMorpho(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2269
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2271
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2274
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 2275
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2471
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBMDebandingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2860
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMDebandingMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2812
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBMLowLightMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateBMZSLBufSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2817
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCustomZslBufSize()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMCustomZslBufSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBestMomentDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2799
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBestMomentDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBestMomentRawHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2807
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBestMomentRawHDRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 2599
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureBurstNumber(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2534
    new-instance v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->asdEffectColorCard()Z

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->hasValidFace()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode()Z

    move-result v2

    invoke-direct {v4, v0, v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;-><init>(ZZZ)V

    .line 2535
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureCustomTuning()Ljava/lang/String;

    move-result-object v1

    .line 2536
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    .line 2535
    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureCustomTuning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureISPTunning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2864
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    .line 2865
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureISPTunning()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_11
    return-void
.end method

.method private updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2849
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTag()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTag(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureZSLTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;IZI)V
    .registers 6

    .line 1069
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p3, :cond_28

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isStillCaptureTemplate(I)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_28

    .line 1073
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureZSLTimestamps()[J

    move-result-object p2

    if-eqz p2, :cond_28

    .line 1074
    array-length p3, p2

    if-nez p3, :cond_19

    goto :goto_28

    .line 1077
    :cond_19
    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    invoke-static {p4, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p3

    .line 1078
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    aget-wide p2, p2, p3

    invoke-interface {p0, p2, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureZSLTimestamp(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_28
    :goto_28
    return-void
.end method

.method private updateCelebritySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2890
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCelebritySceneMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCelebritySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1454
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1457
    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    .line 1461
    :goto_11
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateControlMode controlMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentSceneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1462
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 10

    .line 1466
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 1468
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateControlSceneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1469
    const-string v1, "dsp_super_night"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "hdr"

    if-nez v1, :cond_35

    const-string v1, "meg_super_night"

    .line 1470
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1471
    :cond_35
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHDRForSuperNight()Z

    move-result v1

    if-eqz v1, :cond_3e

    move-object v0, v2

    .line 1480
    :cond_3e
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move-object v0, v2

    .line 1484
    :cond_4f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Night_Light"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move-object v0, v2

    .line 1487
    :cond_5c
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_78

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    if-eq v1, v3, :cond_77

    .line 1488
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_77

    .line 1489
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_78

    :cond_77
    move-object v0, v2

    .line 1494
    :cond_78
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a0

    .line 1495
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1496
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1497
    const-string v0, "auto"

    goto :goto_a0

    :cond_9f
    move-object v0, v2

    .line 1502
    :cond_a0
    :goto_a0
    const-string v1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    move-object v0, v2

    .line 1505
    :cond_ad
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dual_video"

    if-eqz v1, :cond_b6

    move-object v0, v4

    .line 1509
    :cond_b6
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needUpdateSceneForPortrait()Z

    move-result v1

    const-string v5, "sprd_portrait"

    if-eqz v1, :cond_e4

    .line 1510
    const-string/jumbo v1, "val_sdof"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ce

    move-object v0, v5

    .line 1514
    :cond_ce
    const-string/jumbo v1, "val_stb_blur"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeHDRSupport:Z

    if-nez v1, :cond_e4

    move-object v0, v5

    .line 1519
    :cond_e4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needTurnHDROff()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1520
    const-string v0, "off"

    :cond_ee
    if-eqz v0, :cond_185

    .line 1525
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x12

    const/4 v7, 0x0

    sparse-switch v1, :sswitch_data_186

    goto :goto_12c

    :sswitch_fb
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    goto :goto_130

    :sswitch_102
    const-string v1, "sprd_night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12c

    :sswitch_109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    move v3, v6

    goto :goto_130

    :sswitch_111
    const-string v1, "mtk_360hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    const/16 v3, 0x65

    goto :goto_130

    :sswitch_11c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 1530
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v1

    if-eqz v1, :cond_12e

    :cond_12c
    :goto_12c
    move v3, v7

    goto :goto_130

    :cond_12e
    const/16 v3, 0x8

    .line 1548
    :goto_130
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateControlSceneMode(I)I

    move-result v1

    .line 1549
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSceneMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sceneMode:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v1, v6, :cond_163

    .line 1550
    const-string/jumbo v0, "val_magic_sky"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    :cond_163
    const-string/jumbo v0, "val_hdr"

    .line 1551
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1552
    :cond_170
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYUVHdrCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_17c

    .line 1554
    :cond_177
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v7, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYUVHdrCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1556
    :goto_17c
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_185
    return-void

    :sswitch_data_186
    .sparse-switch
        -0x79c99d08 -> :sswitch_11c
        -0x6713495c -> :sswitch_111
        0x192f6 -> :sswitch_109
        0x2f7f4928 -> :sswitch_102
        0x6df8fc8b -> :sswitch_fb
    .end sparse-switch
.end method

.method private updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2885
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 2886
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseDXOArea()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2885
    :goto_13
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDxoCountry(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V
    .registers 7

    .line 2662
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateExifModeInfo] isBurstCapture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", template = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_23

    const/16 p2, 0x65

    goto :goto_27

    .line 2663
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExifModeInfo()I

    move-result p2

    :goto_27
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2f

    .line 2665
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setExifModeInfo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2f
    return-void
.end method

.method private updateExternalIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2766
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExternalIspMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setExternalIspMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFaceProportion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2966
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceProportion()F

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceProportion(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2364
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFakeDualLensMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2845
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlareCaptureEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlareCaptureEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlashSnapAutoCaptureMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2803
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashSnapAutoCaptureMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashSnapAutoCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlashStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2514
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1217
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 1218
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    .line 1217
    invoke-static {v1, v2, v3, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    .line 1219
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateFrontDualFlashColorTemp(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2305
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashColorTemp()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFrontDualFlashStrengthMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2309
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashStrengthMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2457
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2459
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2462
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGenderAttributeValue()Ljava/lang/String;

    move-result-object v0

    .line 2463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2464
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getAttributeValue is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2467
    :cond_22
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkinColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGenderAttributeValue(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGoldWaterMarkModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2700
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkModeType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2704
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGoldWaterMarkSize()[I

    move-result-object v0

    .line 2705
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGoldWaterMarkSize: goldWaterMarkSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2706
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x4

    .line 2707
    new-array v2, v1, [I

    if-eqz v0, :cond_81

    .line 2708
    array-length v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_81

    .line 2709
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_41

    goto :goto_47

    .line 2712
    :cond_41
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    :goto_45
    move-object v2, v0

    goto :goto_4c

    .line 2710
    :cond_47
    :goto_47
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    goto :goto_45

    .line 2714
    :goto_4c
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gold watermark Size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2717
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2719
    :cond_87
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2853
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGroupCaptureEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGroupCaptureEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateHALBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2936
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHALBMLowLightMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHalBmLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateHdr10PlusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2971
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdr10PlusMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdr10PlusMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateHeavyCapturing()V
    .registers 2

    .line 2613
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHeavyCapturing(Z)V

    return-void
.end method

.method private updateHeavyCapturingBV()V
    .registers 2

    .line 2617
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHeavyCapturingBV(I)V

    return-void
.end method

.method private updateHighLightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2491
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-eqz v0, :cond_b

    .line 2492
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighLight(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_b
    return-void
.end method

.method private updateHumanBox(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2990
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanBox()[I

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetectInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateInSensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2941
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getInSensorZoomEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setInSensorZoomEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateIncreaseFreq(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2870
    const-string/jumbo v0, "val_ai_art_museum"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    .line 2871
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIncreaseFrequency(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2873
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getIncreaseFrequencyEnable()I

    move-result v0

    .line 2874
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCurrentFaces()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    if-lt v2, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 2876
    :goto_23
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIncreaseFrequency(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateInsensorScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2945
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getInsensorScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setInsensorScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2750
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2751
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getIs24HourFormat()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIs24HourFormat(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 7

    .line 2020
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2021
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLensCorrectionMode()I

    move-result v0

    .line 2022
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLensCorrectionMode,isBurstShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",lensCorrectionMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_30

    const/4 v0, 0x0

    .line 2026
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLensCorrectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2028
    :cond_36
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLensCorrectionMode()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLensCorrectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLivePhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2995
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLivePhotoMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLivePhotoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLiveResultMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2582
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLiveResultMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 1918
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongPressBurst(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2429
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMacroLampValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2497
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2498
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2502
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyResult()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 7

    .line 1203
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1204
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 1205
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 1204
    invoke-static {v1, v2, v3, v4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 1206
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1209
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    .line 1210
    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_33
    return-void
.end method

.method private updateMoonDetectPitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2445
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetectPitch()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionPitch(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2441
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2437
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightHawkMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOISSupport()Z

    move-result v0

    .line 1442
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOISMode,isSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_30

    .line 1444
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "on"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1445
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method private updateP2CropRegionCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2092
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2CropRegionCustomize()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2CropRegionCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateP2RawCropResizeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2088
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2RawCropResizeEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2RawCropResizeEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateP2ResizerSizeCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2096
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2ResizerSizeCustomize()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2ResizerSizeCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlareLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2787
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlareLocation()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPMasterFlareLocation([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlareMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2774
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPMasterFlareMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPMasterFlareMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlarePreviewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2791
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    filled-new-array {v1, p0}, [Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPMasterFlarePreviewSize([Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePipDeviceValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2530
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2744
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2745
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPlainLocationText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPlainLocationText(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2453
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePostAlgoConfig([I)V
    .registers 9

    if-eqz p1, :cond_5d

    .line 845
    array-length v0, p1

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    .line 846
    aget v1, p1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    .line 847
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    .line 848
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 849
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    .line 850
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    move v1, v0

    .line 851
    :goto_1d
    aget v2, p1, v0

    if-ge v1, v2, :cond_5c

    .line 852
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    add-int/lit8 v4, v1, 0x1

    aget v5, p1, v4

    int-to-long v5, v5

    aput-wide v5, v3, v1

    .line 853
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    aput v2, v3, v1

    .line 854
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v3, p1, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    .line 855
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v3, p1, v0

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    .line 856
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v3, p1, v0

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    move v1, v4

    goto :goto_1d

    :cond_5c
    return-void

    :cond_5d
    const/16 p1, 0xa

    .line 859
    new-array p1, p1, [I

    fill-array-data p1, :array_68

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    nop

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        -0x4
        -0x5
        0x1
    .end array-data
.end method

.method private updatePreviewGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2724
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewGoldWaterMarkSize()[I

    move-result-object v0

    .line 2725
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewGoldWaterMarkSize: goldWaterMarkSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2726
    new-array v2, v1, [I

    if-eqz v0, :cond_79

    .line 2727
    array-length v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_79

    .line 2728
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_39

    goto :goto_3f

    .line 2731
    :cond_39
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    :goto_3d
    move-object v2, v0

    goto :goto_44

    .line 2729
    :cond_3f
    :goto_3f
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    goto :goto_3d

    .line 2733
    :goto_44
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview gold watermark Size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2736
    :cond_79
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPreviewGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1432
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object v0

    .line 1433
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoFpsRange:Landroid/util/Range;

    .line 1435
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewRange use postAlgoFpsRange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1437
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V

    return-void
.end method

.method private updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2756
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2757
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getProWatermarkStyle()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setProWatermarkStyle(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V
    .registers 8

    .line 2586
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportProcessRawMode:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    if-ne p4, v0, :cond_33

    .line 2587
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_20

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p4

    const/4 v2, 0x4

    if-ne p4, v2, :cond_20

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result p4

    if-eq p4, v1, :cond_21

    :cond_20
    move p3, v0

    :cond_21
    if-lez p3, :cond_25

    move p3, v1

    goto :goto_26

    :cond_25
    move p3, v0

    .line 2591
    :goto_26
    iget p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mDumpFirstFrameValue:I

    if-eq p4, v1, :cond_2e

    if-nez p2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, p3

    .line 2594
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setProcessRawMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_33
    return-void
.end method

.method private updateQcomWarmStart(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 1686
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecSensitivity()[F

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecSensitivity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1687
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameControlLuxIndex()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameControlLuxIndex(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1688
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameDarkBoostGain()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameDarkBoostGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1689
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameAdrcGain()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameAdrcGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1690
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecCameraId(Ljava/lang/Integer;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1691
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbGains()[F

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAwbWarmstartGain([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1692
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbFrameControlCCT()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStartAwbWarmstartCCT(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1693
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbDecisionAfterTC()[F

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAwbDecisionAfterTC([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateQuadSwitchValue(Landroid/hardware/camera2/CaptureRequest$Builder;ILandroid/view/Surface;)V
    .registers 13

    const/4 v0, 0x6

    if-eq p2, v0, :cond_a8

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    goto/16 :goto_a8

    .line 2898
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result p2

    int-to-float p2, p2

    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr p2, v0

    .line 2899
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result v0

    .line 2900
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v1

    .line 2902
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->AIRAW_SUPPORT_CAMERA_IDS:[I

    array-length v2, v2

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v3, :cond_47

    .line 2903
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2904
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isLongFocusCamera()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongFocusBaseZoomRatio()F

    move-result v2

    mul-float/2addr p2, v2

    :cond_35
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_45

    float-to-double v2, p2

    const-wide v7, 0x400599999999999aL    # 2.7

    cmpg-double v2, v2, v7

    if-gez v2, :cond_45

    :goto_43
    move v2, v5

    goto :goto_52

    :cond_45
    move v2, v6

    goto :goto_52

    :cond_47
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_45

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_45

    goto :goto_43

    .line 2910
    :goto_52
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateQuadSwitchValue : zoomRatio "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", bv "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", rawScene "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPostAlgoQuadSupport : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoQuadSupport:Z

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2910
    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2914
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoQuadSupport:Z

    if-eqz p2, :cond_a3

    if-eqz v2, :cond_a3

    const/16 p2, 0x1e

    if-le v0, p2, :cond_a3

    .line 2917
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, v5, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setQuadSwitchValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p3, :cond_9f

    .line 2919
    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2921
    :cond_9f
    invoke-virtual {p0, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    return-void

    .line 2923
    :cond_a3
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v6, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setQuadSwitchValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method private updateQualcommFeature2Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1697
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFeature2Mode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFeature2Mode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRTDofEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRaw10ConvertFMT(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2740
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRaw10ConvertFMT(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRawSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2080
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRawSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1994
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1995
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2053
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRemosaicMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequest360VideoHDRInitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1729
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRInitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->set360VideoHdrInitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequest360VideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1725
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 15

    .line 1562
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 1564
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "10"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    sparse-switch v1, :sswitch_data_100

    goto/16 :goto_8f

    :sswitch_1c
    const-string v1, "daylight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_8f

    :cond_26
    const/16 v12, 0x9

    goto/16 :goto_8f

    :sswitch_2a
    const-string v1, "fluorescent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_8f

    :cond_34
    move v12, v2

    goto/16 :goto_8f

    :sswitch_37
    const-string/jumbo v1, "twilight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_8f

    :cond_42
    move v12, v3

    goto :goto_8f

    :sswitch_44
    const-string/jumbo v1, "warm_fluorescent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_8f

    :cond_4e
    move v12, v4

    goto :goto_8f

    :sswitch_50
    const-string v1, "cloudy_daylight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_8f

    :cond_59
    move v12, v5

    goto :goto_8f

    :sswitch_5b
    const-string v1, "shade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_8f

    :cond_64
    move v12, v6

    goto :goto_8f

    :sswitch_66
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_8f

    :cond_6f
    move v12, v7

    goto :goto_8f

    :sswitch_71
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    goto :goto_8f

    :cond_7a
    move v12, v8

    goto :goto_8f

    :sswitch_7c
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_8f

    :cond_83
    move v12, v11

    goto :goto_8f

    :sswitch_85
    const-string v1, "incandescent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    goto :goto_8f

    :cond_8e
    move v12, v10

    :goto_8f
    packed-switch v12, :pswitch_data_12a

    const/4 v1, 0x0

    goto :goto_c9

    .line 1581
    :pswitch_94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1575
    :pswitch_99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1587
    :pswitch_9e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1578
    :pswitch_a3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1584
    :pswitch_a8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1590
    :pswitch_ad
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1569
    :pswitch_b2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1566
    :pswitch_b7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1593
    :pswitch_bc
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1572
    :pswitch_c5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1598
    :goto_c9
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRequestAWBMode awbValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1599
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1601
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1602
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, v11, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1603
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getManualAWBValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1605
    :cond_fa
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v10, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_ff
    return-void

    :sswitch_data_100
    .sparse-switch
        -0x37fc9231 -> :sswitch_85
        0x61f -> :sswitch_7c
        0x1ad6f -> :sswitch_71
        0x2dddaf -> :sswitch_66
        0x6854e2d -> :sswitch_5b
        0x11ac9bf5 -> :sswitch_50
        0x55d265ae -> :sswitch_44
        0x625dee90 -> :sswitch_37
        0x71671468 -> :sswitch_2a
        0x73cf92fa -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_bc
        :pswitch_b7
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
    .end packed-switch
.end method

.method private updateRequestAeeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2625
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoFrameInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAeeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAirawSN2SRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2159
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAirawSN2SRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAirawSN2SRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAnimalEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2401
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAnimalEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAodMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2696
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->aodMode()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateAodMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1733
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getArcFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setArcFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2012
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2016
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdVersion()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdVersion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoMacroSwitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2405
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoMacroSwitchSetting(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2409
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitchSetting()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoMacroSwitchSetting(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 2250
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result p2

    if-nez p2, :cond_10

    .line 2252
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2255
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p2

    .line 2256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2257
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "autoWatermarkMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2261
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2262
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2264
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, -0x1

    invoke-interface {p0, p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2297
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWConvertEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2293
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWPortraitEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1879
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isTZServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 1880
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBGImageReaderId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1873
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1874
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_13

    .line 2136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureTime(J)V

    .line 2137
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_13
    return-void
.end method

.method private updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2647
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getColorLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2242
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2037
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCusIspAsd()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2045
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSmartDenoise()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2237
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrection], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2232
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrectionPreview], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDxoSceneDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDxoSceneDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDxoSceneDetectionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestEVListResult(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2642
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEVList([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateRequestExcludeVideoMakeUpBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1805
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExcludeVideoMakeupBeauty()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionExcludeVideoMakeUpBeauty(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 8

    .line 1409
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5b

    if-nez v0, :cond_5b

    .line 1411
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5b

    .line 1412
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7735940

    cmp-long p2, v1, v3

    if-lez p2, :cond_5b

    .line 1413
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    div-int/2addr p2, v0

    .line 1414
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    div-int/2addr v0, p2

    .line 1415
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x419dcd6500000000L    # 1.25E8

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    int-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1418
    :cond_5b
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRequestExposureCompensation: config value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1419
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 9

    .line 1701
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v0

    .line 1702
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isNeedRestrictExposureTime()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    if-ne p2, v2, :cond_16

    const-wide/32 v2, 0x7735940

    .line 1703
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1706
    :cond_16
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRequestExposureTime: config value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", template:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_4a

    const-wide/16 v0, 0x0

    goto :goto_53

    .line 1710
    :cond_4a
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1712
    :goto_53
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2393
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceAttributeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1843
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1844
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceAttributeInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceAttributeValue([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1813
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1814
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1365
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestFaceDetectionMode] mFaceDetectionEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isFaceDetectionEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isFaceDetectionEnable()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 1370
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1371
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1372
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1373
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1374
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1376
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face detect not supported."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1379
    :cond_58
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 1380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1379
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1381
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 14

    const/4 v0, 0x1

    .line 1324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1320
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 1321
    const-string v3, "fixed"

    if-eqz v2, :cond_78

    .line 1322
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v4, :sswitch_data_102

    :goto_1a
    move v0, v10

    goto :goto_59

    :sswitch_1c
    const-string v0, "continuous-picture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1a

    :cond_25
    move v0, v5

    goto :goto_59

    :sswitch_27
    const-string v0, "macro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_1a

    :cond_30
    move v0, v6

    goto :goto_59

    :sswitch_32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_1a

    :cond_39
    move v0, v7

    goto :goto_59

    :sswitch_3b
    const-string v0, "edof"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_1a

    :cond_44
    move v0, v8

    goto :goto_59

    :sswitch_46
    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_1a

    :sswitch_4f
    const-string v0, "continuous-video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_1a

    :cond_58
    move v0, v9

    :cond_59
    :goto_59
    packed-switch v0, :pswitch_data_11c

    goto :goto_78

    .line 1327
    :pswitch_5d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1339
    :pswitch_62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1336
    :pswitch_67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1333
    :pswitch_6c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    :pswitch_71
    move-object v0, v1

    goto :goto_79

    .line 1330
    :pswitch_73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v0, 0x0

    .line 1345
    :goto_79
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v4

    if-nez v4, :cond_91

    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isLongExposureCapture(I)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isPicTraceMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_91

    :cond_90
    move-object v1, v0

    .line 1349
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateRequestFocusMode], currentFocusMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , needFocusModeAuto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLongExposureCapture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isLongExposureCapture(I)Z

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isPicTraceMode: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isPicTraceMode(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1349
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1351
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1353
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 1355
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusLength()F

    move-result p2

    const v0, 0x3b03126f    # 0.002f

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_f4

    .line 1356
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusLength()F

    move-result p0

    goto :goto_f8

    .line 1358
    :cond_f4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusDistance()F

    move-result p0

    .line 1360
    :goto_f8
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_101
    return-void

    :sswitch_data_102
    .sparse-switch
        -0xb99cbc3 -> :sswitch_4f
        0x2dddaf -> :sswitch_46
        0x2f6eb6 -> :sswitch_3b
        0x5cee774 -> :sswitch_32
        0x62d9bcc -> :sswitch_27
        0x363d9440 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_73
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
    .end packed-switch
.end method

.method private updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 18

    move-object/from16 v0, p0

    .line 1922
    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result v1

    .line 1923
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object v2

    .line 1924
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v3

    .line 1925
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    .line 1926
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v5

    .line 1927
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v6

    .line 1928
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAINRMode()I

    move-result v7

    .line 1929
    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1930
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mMulticamCaptureFusionFastNightConflictSupport:Z

    if-eqz v8, :cond_34

    .line 1933
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v10, "Night_Light"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_35

    :cond_34
    const/4 v8, 0x0

    .line 1935
    :goto_35
    iget-object v10, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFusionSupport: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , fusionMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v2, :cond_57

    goto/16 :goto_140

    :cond_57
    const/4 v10, 0x4

    const/4 v11, 0x1

    if-eq v4, v10, :cond_60

    if-ne v4, v11, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v10, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    move v10, v11

    :goto_61
    if-eq v5, v11, :cond_69

    const/4 v12, 0x2

    if-ne v5, v12, :cond_67

    goto :goto_69

    :cond_67
    const/4 v5, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    move v5, v11

    .line 1942
    :goto_6a
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v12

    int-to-float v12, v12

    sget v13, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr v12, v13

    .line 1943
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBrightnessValue()I

    move-result v13

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFusionModeBVLimit()I

    move-result v14

    if-lt v13, v14, :cond_7e

    move v13, v11

    goto :goto_7f

    :cond_7e
    const/4 v13, 0x0

    .line 1944
    :goto_7f
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hdr:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",lowLightHdr:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tfAlgo:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",tfAlgoSupportFusionMode:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",superAiRawAlgoSupportFusionMode:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",zoomRatio:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",multicamCaptureFastNightConflict:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",brightnessValue:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBrightnessValue()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",getFusionModeBVLimit():"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFusionModeBVLimit()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",ainrMode:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1944
    invoke-static {v14, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_140

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_f6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v12, v1

    if-gez v1, :cond_f6

    move v1, v11

    goto :goto_f7

    :cond_f6
    const/4 v1, 0x0

    .line 1954
    :goto_f7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-nez v4, :cond_10d

    .line 1955
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-nez v4, :cond_10d

    if-eq v6, v11, :cond_10d

    if-eq v3, v11, :cond_10d

    move v3, v11

    goto :goto_10e

    :cond_10d
    const/4 v3, 0x0

    .line 1959
    :goto_10e
    const-string v4, "on"

    if-eqz v1, :cond_132

    .line 1960
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1961
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isWideCamera()Z

    move-result v1

    if-eqz v1, :cond_132

    if-eqz v13, :cond_132

    if-nez v8, :cond_132

    if-eq v7, v11, :cond_132

    .line 1965
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result v1

    if-nez v1, :cond_132

    if-nez v10, :cond_130

    if-nez v5, :cond_130

    if-eqz v3, :cond_132

    :cond_130
    move v9, v11

    goto :goto_133

    :cond_132
    const/4 v9, 0x0

    .line 1968
    :goto_133
    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-eqz v9, :cond_13a

    :goto_137
    move-object/from16 v1, p1

    goto :goto_13d

    :cond_13a
    const-string v4, "off"

    goto :goto_137

    :goto_13d
    invoke-interface {v0, v4, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_140
    :goto_140
    return-void
.end method

.method private updateRequestHDRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2629
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHDRAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHDRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1903
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1907
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2397
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHumanDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2475
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanEffectMode()Ljava/lang/String;

    move-result-object v0

    .line 2476
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2477
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 1655
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    .line 1660
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRequestISOValue: config value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", set value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    const/4 p2, 0x0

    .line 1664
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1665
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestISPTuningEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2246
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISPTuningEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableIspTuningData(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestImageStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1745
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getImageStyleId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setImageStyleId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestIsoAndExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 13

    .line 1669
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v0

    .line 1670
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    .line 1671
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isNeedRestrictExposureTime()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    if-ne p2, v4, :cond_1a

    const-wide/32 v5, 0x7735940

    .line 1672
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_1a
    const-wide/16 v5, 0x0

    const/4 p2, 0x0

    const-wide/16 v7, -0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    cmp-long v9, v1, v7

    if-nez v9, :cond_2c

    .line 1675
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v5, v6, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_2c
    if-eq v0, v3, :cond_39

    cmp-long v9, v1, v7

    if-nez v9, :cond_39

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_39
    if-ne v0, v3, :cond_45

    cmp-long v9, v1, v7

    if-eqz v9, :cond_45

    .line 1679
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, v2, v4, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_45
    if-eq v0, v3, :cond_50

    cmp-long v0, v1, v7

    if-eqz v0, :cond_50

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v5, v6, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_50
    return-void
.end method

.method private updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1236
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object v0

    .line 1237
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegGPSLocation: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_26

    .line 1239
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method private updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1232
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1223
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegQuality()I

    move-result p0

    if-lez p0, :cond_19

    int-to-byte p0, p0

    .line 1226
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1227
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method private updateRequestLongExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2651
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v0

    .line 2652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2653
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureTripod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongExposureScene(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2655
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v0

    .line 2656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2657
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongExposureCaptureState(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2a
    return-void
.end method

.method private updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2116
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2301
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLuminanceValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2633
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMFNRAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMFNRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1793
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1789
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1801
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1797
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 6

    .line 2120
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRequestMiddleNight,isBurstShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    .line 2122
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 2123
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_27
    return-void

    .line 2126
    :cond_28
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 2127
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p2, 0x2

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2129
    :cond_37
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v0, :cond_3f

    const/4 p0, 0x0

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p0

    :goto_43
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1987
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1988
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1990
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2004
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 7

    .line 1818
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMultiFaceBeautyMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1819
    const-string/jumbo v1, "value_facebeauty_video_asd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "value_facebeauty_video_preisp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_84

    .line 1823
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateRequestMultiFaceBeauty], mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3f

    .line 1824
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyPreviewInApp:Z

    if-eqz p2, :cond_3f

    .line 1825
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v2, "off"

    invoke-interface {p2, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_44

    .line 1827
    :cond_3f
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1829
    :goto_44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_8c

    :goto_4c
    move v1, v2

    goto :goto_6c

    :sswitch_4e
    const-string p2, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_57

    goto :goto_4c

    :cond_57
    const/4 v1, 0x2

    goto :goto_6c

    :sswitch_59
    const-string p2, "multifaceCustom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6c

    goto :goto_4c

    :sswitch_62
    const-string p2, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6b

    goto :goto_4c

    :cond_6b
    const/4 v1, 0x0

    :cond_6c
    :goto_6c
    packed-switch v1, :pswitch_data_9a

    return-void

    .line 1831
    :pswitch_70
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1835
    :pswitch_7a
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyFeaturesLevel()[I

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1820
    :cond_84
    :goto_84
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateRequestMultiFaceBeauty], mode is null, return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :sswitch_data_8c
    .sparse-switch
        -0x5069748f -> :sswitch_62
        -0x4e8d49d9 -> :sswitch_59
        0xddf -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7a
        :pswitch_70
    .end packed-switch
.end method

.method private updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2100
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranssionNightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v1, "Night_Light"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->replaceSuperNightToSWMFNR()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2102
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2104
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->replaceSuperNightToSWMFNR()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_42

    :cond_3e
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v0

    .line 2105
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2173
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNight3dnrAlgo()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2637
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2177
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightMorHdsScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2008
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1717
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1849
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2189
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2191
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_17
    return-void
.end method

.method private updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2000
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isQuickPreviewEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurLightStrength(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1861
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLightStrength()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1853
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurReaRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1865
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurReaRatio()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurStrengths(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurStrengths()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2313
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2315
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFlashMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2318
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screenFlashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2319
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlashStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2323
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object v0

    .line 2324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2325
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFalshStatus is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2328
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1885
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1887
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportLogicalCameraMode()[I

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1889
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1c
    return-void

    .line 1892
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isLogicalCameraSupport()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->projectSupportISZ()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    .line 1895
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "off"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3b

    .line 1893
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1897
    :goto_3b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVsdofLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1898
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 2225
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    .line 2226
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 2227
    :cond_18
    :goto_18
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->skipMultCapture(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1869
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSkinOptimization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2433
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkinOptimization()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSkinOptimizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSlimBodyLevels()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodySkip(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1785
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimSkip()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodySkip(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2692
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreamFlip()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestStreetPhotoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1741
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreetPhotoFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStreetPhotoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperAIRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2163
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v1, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result p0

    :goto_c
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperAIRawMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1749
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNvsSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1977
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1978
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTfPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2155
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTfPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTfPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1648
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getThumbnailSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1650
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1737
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2041
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2181
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1753
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTripodSuperNightEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1982
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1983
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTripodSuperNightEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTuningChn(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1450
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTuningChn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoEffectId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1761
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilterLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1769
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoFilterLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilterSkinType(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1765
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterSkinType()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFrame(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1777
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFrameId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1721
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2185
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .registers 4

    if-nez p3, :cond_2d

    .line 1386
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isStillCaptureTemplate(I)Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p2, "stellartrack"

    .line 1387
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    const-string p2, "star"

    .line 1388
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 1389
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1391
    :cond_2d
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2670
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2389
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSMVRRequestParams()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSTBlurCaptureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2975
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortrait8MSize(ILandroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2482
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2484
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2485
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 2486
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_17
    return-void
.end method

.method private updateScreenTorchStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2518
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenTorchStatus()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSensorHighSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2084
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSensorHighSize(ILandroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSmoothZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2857
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSmoothZoomValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSmoothZoomValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateStreamingCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2573
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->asdEffectColorCard()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->hasValidFace()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;-><init>(ZZZ)V

    .line 2574
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreamingCustomTuning()I

    move-result p0

    invoke-interface {v1, p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStreamingCustomTuning(ILcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2279
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSuperAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2281
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2284
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 2285
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2049
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperFlashValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2506
    const-string v0, "Night_Light"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2507
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "off"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2509
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperNightAlgoTypeToHal()V
    .registers 2

    .line 1973
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v0, :cond_7

    const-string v0, "None"

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    return-void
.end method

.method private updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2076
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v1, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperResolutionMode()I

    move-result p0

    :goto_c
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSystemUserID(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2980
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSystemUserID()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSystemUserID(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 2826
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2827
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 2834
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2835
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateTAPSCaptureNeedYuvSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2821
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTAPSCaptureNeedYuvSize()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureNeedYuvSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2381
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranFaceDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionAINRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2881
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAINRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionAINRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2385
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateViUllEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2949
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getViUllEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setViUllEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideo2kCapSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2795
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideo2kCapSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideo2kCapSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideo360HdrAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2548
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideo360HdrScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoAutoFpsModeForISP(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2770
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoFpsModeForISP()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoAutoFpsModeForISP(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoHDRFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2985
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHdrFormat()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHDRFormat(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2417
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2413
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPreIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2762
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPreIspMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPreIspMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoRecordStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2526
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoRecordStatus(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSpotLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2421
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSpotLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSpotLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSpotMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2425
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSpotMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSpotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2544
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2540
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2552
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightResolution()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2556
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoSuperNightYUVMode] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2557
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result v0

    if-lez v0, :cond_40

    .line 2558
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2561
    :cond_40
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_50

    .line 2562
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2565
    :cond_50
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_60

    .line 2566
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2569
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateYuvCaptureFlipMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2578
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getYuvCaptureFlipMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoom2xRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2057
    const-string/jumbo v0, "val_asd"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "val_super_definition"

    .line 2058
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "val_ultrahd"

    .line 2059
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2f

    .line 2067
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZoom2xRemosaicMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2060
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionFilterId()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v1

    .line 2061
    :goto_39
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getImageStyleId()I

    move-result v3

    if-nez v3, :cond_41

    move v3, v2

    goto :goto_42

    :cond_41
    move v3, v1

    .line 2062
    :goto_42
    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    mul-int/lit8 v4, v4, 0x2

    .line 2063
    iget v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    if-ne v5, v2, :cond_55

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRealZoomRatio()I

    move-result v5

    if-lt v5, v4, :cond_55

    if-eqz v0, :cond_55

    if-eqz v3, :cond_55

    move v1, v2

    .line 2065
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZoom2xRemosaicMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoomEisMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2841
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v1, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomEisMode()I

    move-result p0

    :goto_c
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZoomEisMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 14

    .line 1082
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getOverrideSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1083
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr v1, v2

    .line 1084
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRealZoomRatio()I

    move-result v2

    if-eqz v0, :cond_25

    .line 1086
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_25

    .line 1087
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_149

    .line 1089
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_31

    const v0, 0x3faaaaab

    goto :goto_3e

    .line 1094
    :cond_31
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 1097
    :goto_3e
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1098
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v6, v4

    mul-float/2addr v3, v6

    int-to-float v7, v5

    div-float v8, v3, v7

    .line 1101
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    if-eqz v9, :cond_6d

    .line 1102
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1103
    iget-object v10, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v9, :cond_6d

    if-ge v9, v4, :cond_6d

    if-lez v10, :cond_6d

    if-ge v10, v5, :cond_6d

    int-to-float v9, v9

    div-float v9, v3, v9

    cmpg-float v10, v1, v9

    if-gez v10, :cond_6d

    move v1, v9

    .line 1113
    :cond_6d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFovWideCrop()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 1115
    const-string v9, "1"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 1116
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle60fps:Landroid/graphics/Rect;

    goto :goto_84

    .line 1118
    :cond_82
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    :goto_84
    if-eqz v9, :cond_9d

    .line 1121
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1122
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v10, :cond_9d

    if-ge v10, v4, :cond_9d

    if-lez v9, :cond_9d

    if-ge v9, v5, :cond_9d

    int-to-float v9, v10

    div-float/2addr v3, v9

    cmpg-float v9, v1, v3

    if-gez v9, :cond_9d

    move v1, v3

    .line 1133
    :cond_9d
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v3

    if-eqz v3, :cond_118

    const v3, 0x3b03126f    # 0.002f

    add-float v9, v8, v3

    cmpl-float v9, v0, v9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-lez v9, :cond_cf

    div-float v0, v6, v0

    sub-float/2addr v7, v0

    div-float/2addr v7, v10

    float-to-int v0, v7

    .line 1136
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 1137
    invoke-static {v6, v11, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v5, v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    int-to-float v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 1138
    invoke-static {v7, v11, v5}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v7

    .line 1136
    invoke-virtual {v3, v11, v0, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_102

    :cond_cf
    sub-float/2addr v8, v3

    cmpg-float v3, v0, v8

    if-gez v3, :cond_f1

    mul-float/2addr v0, v7

    sub-float/2addr v6, v0

    div-float/2addr v6, v10

    float-to-int v0, v6

    .line 1141
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v4, v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    int-to-float v8, v0

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 1142
    invoke-static {v6, v11, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    div-float/2addr v7, v1

    float-to-int v7, v7

    .line 1143
    invoke-static {v7, v11, v5}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v7

    .line 1141
    invoke-virtual {v3, v0, v11, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_102

    .line 1145
    :cond_f1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v6, v1

    float-to-int v3, v6

    .line 1146
    invoke-static {v3, v11, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v3

    div-float/2addr v7, v1

    float-to-int v6, v7

    .line 1147
    invoke-static {v6, v11, v5}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    .line 1145
    invoke-virtual {v0, v11, v11, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1149
    :goto_102
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1150
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 1149
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_149

    .line 1152
    :cond_118
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1153
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1154
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-int v4, v4

    .line 1155
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float/2addr v6, v1

    float-to-int v5, v6

    .line 1156
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    sub-int v7, v0, v4

    sub-int v8, v3, v5

    add-int/2addr v0, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v7, v8, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1159
    :goto_149
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 1160
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCropRectangle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isSatSupport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " zoomRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " realZoomRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mMulitiCropRegionZoomRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1162
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 1163
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1164
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRealZoomRatio(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1165
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocalLength()I

    move-result v2

    if-lez v2, :cond_1ae

    .line 1166
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocalLength()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFocalLength(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1ae
    if-eqz v0, :cond_1c4

    .line 1169
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1171
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1174
    :cond_1c4
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->projectSupportISZ()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 1175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1cd
    return-void

    .line 1178
    :cond_1ce
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method varargs addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V
    .registers 8

    .line 529
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p2, v1

    if-nez v2, :cond_f

    .line 531
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "add null Surface as request target."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 534
    :cond_f
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    .line 2203
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method checkShutterDone(Landroid/hardware/camera2/CaptureResult;)Z
    .registers 2

    .line 2213
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkShutterDone(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    return p0
.end method

.method public clearAll()V
    .registers 2

    .line 204
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    .line 206
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    :cond_d
    return-void
.end method

.method public clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 2

    .line 2372
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    .line 2374
    :catch_7
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clone error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    return-object p0
.end method

.method configureBGService(ZI)V
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureBGService isEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enableBGServiceMode(Z)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setBGImageReaderId(I)V

    return-void
.end method

.method configureTZService(ZI)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureTZService isEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enableTZServiceMode(Z)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setBGImageReaderId(I)V

    return-void
.end method

.method public varargs createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 11

    .line 1002
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1004
    array-length v1, p4

    move v4, v2

    :goto_15
    if-ge v4, v1, :cond_29

    aget-object v5, p4, v4

    if-eqz v5, :cond_21

    .line 1008
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1006
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "add null Surface as request target."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1010
    :cond_29
    invoke-virtual {p0, v0, p1, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 1011
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1014
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1015
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1016
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1017
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1018
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1019
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1020
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1021
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1022
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1023
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1026
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1027
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1028
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isCurrentAppModeRequiredOnContinuousShot()Z

    move-result p4

    if-eqz p4, :cond_5e

    .line 1029
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object p4

    goto :goto_61

    :cond_5e
    const-string/jumbo p4, "val_couti"

    .line 1028
    :goto_61
    invoke-direct {p0, p4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1030
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1031
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1032
    iget-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p4}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p4

    if-eqz p4, :cond_75

    .line 1033
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1036
    :cond_75
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "value_gold_watermark_on"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8c

    .line 1037
    iget-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "goldWatermarkMode is not support burst: "

    invoke-static {p4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1040
    :cond_8c
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1041
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1042
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    if-le p2, v3, :cond_99

    move p4, v3

    goto :goto_9a

    :cond_99
    move p4, v2

    .line 1043
    :goto_9a
    invoke-direct {p0, v0, p4, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    .line 1044
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1045
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1046
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1047
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p4

    if-eqz p4, :cond_b4

    .line 1048
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_bd

    .line 1050
    :cond_b4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isWideCamera()Z

    move-result p4

    if-eqz p4, :cond_bd

    .line 1051
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1054
    :cond_bd
    :goto_bd
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p4

    if-eqz p4, :cond_cd

    .line 1055
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->closetFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1056
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1058
    :cond_cd
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1059
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1060
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :goto_d8
    if-ge v2, p2, :cond_e7

    .line 1062
    invoke-direct {p0, v0, p1, p3, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureZSLTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;IZI)V

    .line 1063
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    :cond_e7
    return-object p4
.end method

.method createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    invoke-static {p0, p1, p2, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method createImageReader(Landroid/util/Size;IJ)Landroid/media/ImageReader;
    .registers 11

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget v3, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    move v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method public varargs createMultiFrameRequest(ILandroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/CameraParameters2Impl;[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 574
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v4

    .line 575
    iget-object v5, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeMultiFramePicture createMultiFrameRequest: algoType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/adapter/CameraParameters;->getBMMultiFrameNum()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->checkPostAlgo(II)V

    .line 577
    iget-object v5, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    move-object/from16 v6, p5

    .line 578
    invoke-virtual {v0, v5, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 579
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object v7, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    array-length v7, v7

    const/4 v8, 0x6

    if-ne v4, v8, :cond_43

    .line 582
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/adapter/CameraParameters;->getBMMultiFrameNum()I

    move-result v7

    :cond_43
    const/4 v9, 0x0

    .line 584
    invoke-virtual {v0, v5, v1, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 585
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 586
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 587
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 588
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 589
    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 590
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 591
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestImageStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 592
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 593
    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 594
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v10, 0x4

    if-ne v4, v10, :cond_6f

    .line 596
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v11

    invoke-direct {v0, v5, v11, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAbeHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 598
    :cond_6f
    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturing()V

    .line 599
    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturingBV()V

    .line 600
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 601
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 602
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 603
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 604
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 605
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 606
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 607
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 608
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 609
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 610
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 611
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 612
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 613
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 614
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 615
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 616
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 617
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 618
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 619
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 620
    invoke-direct {v0, v5, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 621
    invoke-direct {v0, v5, v9, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    if-ne v4, v10, :cond_bf

    .line 622
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawLiteSupportPortraitEnhance()Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 623
    :cond_bf
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c2
    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x1

    if-eq v4, v13, :cond_cd

    if-eq v4, v12, :cond_cd

    if-ne v4, v11, :cond_f1

    .line 628
    :cond_cd
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 629
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 630
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 631
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 632
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 633
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 634
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 635
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlarePreviewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 636
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSkinOptimization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 637
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 638
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 639
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 641
    :cond_f1
    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 642
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 643
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 644
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 645
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 646
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 647
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2RawCropResizeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 648
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2CropRegionCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 649
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2ResizerSizeCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 650
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRawSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 651
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 652
    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFaceProportion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 653
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 654
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutterMorpho(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 655
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v14

    if-eqz v14, :cond_12d

    if-ne v4, v8, :cond_12d

    .line 657
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 658
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 660
    :cond_12d
    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHumanBox(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-ne v4, v13, :cond_13b

    .line 662
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHDRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 663
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 664
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_13b
    if-ne v4, v12, :cond_143

    .line 667
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 668
    invoke-direct {v0, v5, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_143
    if-ne v4, v11, :cond_14e

    .line 671
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v15

    invoke-interface {v14, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_14e
    const/16 v14, 0x8

    const/4 v15, 0x3

    if-eq v4, v15, :cond_155

    if-ne v4, v14, :cond_158

    .line 674
    :cond_155
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_158
    if-eq v4, v15, :cond_167

    if-eq v4, v14, :cond_167

    .line 677
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v10

    const-string v15, "None"

    invoke-interface {v14, v10, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 679
    :cond_167
    iget-object v10, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "takeMultiFramePicture debugMultiFrameNum: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v10, v9

    :goto_17e
    if-ge v10, v7, :cond_393

    .line 681
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "takeMultiFramePicture createMultiFrameRequest: i = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v4, v8, :cond_21c

    .line 685
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v8

    if-ne v8, v13, :cond_1a0

    move v8, v13

    goto :goto_1a1

    :cond_1a0
    move v8, v9

    :goto_1a1
    xor-int/lit8 v18, v8, 0x1

    .line 687
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v19

    if-eqz v19, :cond_1b7

    if-eqz v8, :cond_1b5

    if-nez v10, :cond_1b2

    goto :goto_1b5

    :cond_1b2
    move/from16 v18, v9

    goto :goto_1b7

    :cond_1b5
    :goto_1b5
    move/from16 v18, v13

    :cond_1b7
    :goto_1b7
    move/from16 v11, v18

    .line 690
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "takeMultiFramePicture zslEnable: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isDebandMode: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 691
    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v14

    invoke-interface {v12, v14, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMDebandingMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v8, :cond_1ee

    .line 693
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-nez v10, :cond_1e9

    const/16 v12, 0x138d

    goto :goto_1ea

    :cond_1e9
    move v12, v9

    :goto_1ea
    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1f3

    .line 695
    :cond_1ee
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8, v9, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 697
    :goto_1f3
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBMLowLightMode()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 698
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8, v7, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 699
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    add-int/lit8 v12, v10, 0x1

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 700
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 701
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getMTKProcessRawEnable()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_21a
    :goto_21a
    move v8, v9

    goto :goto_261

    .line 702
    :cond_21c
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    if-eq v8, v13, :cond_24f

    const/16 v8, 0x9

    if-eq v4, v8, :cond_24f

    const/16 v8, 0xa

    if-eq v4, v8, :cond_24f

    const/4 v8, 0x7

    if-eq v4, v8, :cond_24f

    const/16 v8, 0xb

    if-ne v4, v8, :cond_232

    goto :goto_24f

    .line 710
    :cond_232
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    const/4 v11, 0x2

    if-eq v8, v11, :cond_241

    .line 711
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    const/16 v11, 0x14

    if-ne v8, v11, :cond_25f

    :cond_241
    const/4 v8, 0x3

    if-ge v10, v8, :cond_246

    move v11, v13

    goto :goto_247

    :cond_246
    move v11, v9

    .line 715
    :goto_247
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v8, v8, v10

    if-ltz v8, :cond_21a

    move v8, v13

    goto :goto_261

    .line 707
    :cond_24f
    :goto_24f
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseAIRawLiteZSL()Z

    move-result v8

    if-nez v8, :cond_25f

    .line 708
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v8, v8, v10

    if-nez v8, :cond_25d

    move v11, v13

    goto :goto_21a

    :cond_25d
    move v11, v9

    goto :goto_21a

    :cond_25f
    move v8, v9

    move v11, v8

    :goto_261
    if-eqz v2, :cond_282

    .line 717
    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v12, v12, v10

    if-nez v12, :cond_282

    .line 718
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_27e

    .line 719
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x4

    if-eq v12, v14, :cond_27e

    .line 720
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_282

    .line 721
    :cond_27e
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_287

    :cond_282
    if-eqz v2, :cond_287

    .line 723
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 725
    :cond_287
    :goto_287
    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "takeMultiFramePicture brightness : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", aeState : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v11}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    const/4 v12, 0x7

    if-eq v4, v12, :cond_2bb

    const/16 v12, 0xb

    if-eq v4, v12, :cond_2bb

    const/16 v12, 0xa

    if-ne v4, v12, :cond_2bf

    :cond_2bb
    :goto_2bb
    const/4 v14, 0x4

    const/4 v15, 0x3

    goto/16 :goto_346

    :cond_2bf
    const/16 v14, 0x9

    if-ne v4, v14, :cond_2f6

    .line 732
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v13, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 733
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v15, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspTuningIndex:[J

    aget-wide v14, v15, v10

    invoke-interface {v11, v14, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTuningIndex(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 734
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v14, v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 735
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    aget-wide v14, v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 736
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v7, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPFrameCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 737
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v10, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_2bb

    :cond_2f6
    const/4 v14, 0x4

    if-eq v4, v14, :cond_319

    if-eq v4, v13, :cond_319

    const/4 v15, 0x3

    if-eq v4, v15, :cond_31a

    const/16 v12, 0x8

    if-ne v4, v12, :cond_303

    goto :goto_31a

    :cond_303
    if-nez v11, :cond_346

    const/4 v11, 0x6

    if-eq v4, v11, :cond_346

    .line 747
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 748
    invoke-virtual {v0, v13}, Lcom/transsion/camera/adapter/CameraParameters;->needLockAe(Z)V

    goto :goto_346

    :cond_319
    const/4 v15, 0x3

    .line 742
    :cond_31a
    :goto_31a
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 743
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    aget-wide v16, v12, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 744
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v12, v12, v10

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAeIspGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 745
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    aget v12, v12, v10

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setArdcGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 750
    :cond_346
    :goto_346
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureId()I

    move-result v12

    filled-new-array {v12, v10, v7}, [I

    move-result-object v12

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTaskInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 751
    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 752
    invoke-direct {v0, v5, v4, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateQuadSwitchValue(Landroid/hardware/camera2/CaptureRequest$Builder;ILandroid/view/Surface;)V

    .line 753
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCelebritySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 754
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 755
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetectPitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 756
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 757
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAIRawLiteMotionDetectionValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 758
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v11

    invoke-direct {v0, v5, v8, v11, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V

    .line 759
    invoke-direct {v0, v5, v1, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    if-eqz v3, :cond_37a

    if-nez v10, :cond_37a

    .line 761
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_37d

    .line 763
    :cond_37a
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 765
    :goto_37d
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 766
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 767
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x6

    const/16 v11, 0xa

    const/16 v12, 0x9

    goto/16 :goto_17e

    :cond_393
    return-object v6
.end method

.method public varargs createMultiFrameRequestQcom(IZZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 16

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz p2, :cond_10

    .line 885
    filled-new-array {p4}, [Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_13

    .line 887
    :cond_10
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :goto_13
    const/4 v1, 0x0

    .line 890
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 891
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 892
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 893
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 894
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 895
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 896
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 897
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v2

    invoke-direct {p0, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAbeHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 898
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturing()V

    .line 899
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturingBV()V

    .line 900
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 901
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 902
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 903
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 904
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 905
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 906
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 907
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 908
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 909
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 910
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 911
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 912
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 913
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 914
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 915
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 916
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 917
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 918
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 919
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 920
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    .line 921
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 922
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 923
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 924
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 925
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V

    .line 926
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 927
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEVListResult(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 928
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 929
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 930
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 931
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 932
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 933
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 934
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 937
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getOfflineBurstCaptureNumber()I

    move-result v2

    .line 938
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isEVListValid()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 939
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrameNumFromEVList()I

    move-result v2

    .line 940
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result v4

    if-ne v4, v3, :cond_d0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    if-lez v4, :cond_d0

    if-le v2, v3, :cond_d0

    .line 942
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_ce

    .line 943
    filled-new-array {p5}, [Landroid/view/Surface;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :cond_ce
    move p5, v1

    goto :goto_e3

    .line 945
    :cond_d0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v4

    if-lez v4, :cond_e2

    if-le v2, v3, :cond_e2

    .line 946
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 947
    filled-new-array {p5}, [Landroid/view/Surface;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :cond_e2
    move p5, v3

    .line 950
    :goto_e3
    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 951
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 952
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 953
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_f2
    if-ge v4, v2, :cond_164

    if-nez v4, :cond_107

    if-eqz p6, :cond_fb

    .line 957
    invoke-virtual {v0, p6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_fb
    if-eqz p2, :cond_101

    .line 960
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_123

    :cond_101
    if-eqz p4, :cond_123

    .line 962
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_123

    :cond_107
    if-eqz p6, :cond_10c

    .line 966
    invoke-virtual {v0, p6}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_10c
    if-eqz p2, :cond_112

    .line 969
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->removeSurfaceFromBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_123

    :cond_112
    if-eqz p4, :cond_123

    if-eqz p3, :cond_120

    .line 971
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v5

    if-lez v5, :cond_120

    .line 972
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_123

    .line 974
    :cond_120
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 978
    :cond_123
    :goto_123
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isEVListValid()Z

    move-result v5

    if-eqz v5, :cond_157

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result v5

    if-ne v5, v3, :cond_157

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v5

    if-lez v5, :cond_157

    .line 979
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 980
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object v5

    add-int v6, v4, v2

    add-int/2addr v6, v3

    aget v5, v5, v6

    if-ne v5, v3, :cond_153

    move v5, v3

    goto :goto_154

    :cond_153
    move v5, v1

    :goto_154
    invoke-virtual {p0, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    .line 982
    :cond_157
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 983
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f2

    .line 985
    :cond_164
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "takeQcomMultiFramePicture debugMultiFrameNum: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p5
.end method

.method createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 8

    .line 212
    const-string v0, "createRequestBuilder"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createRequestBuilder, mSessionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", template= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0, v2, p1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 220
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBaseKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v2

    .line 225
    :cond_40
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBaseKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 228
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 229
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequest360VideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 230
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequest360VideoHDRInitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 231
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 232
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 233
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 234
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 235
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 236
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 240
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 241
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 242
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 243
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 244
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestScreenFlashStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 247
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_7d

    if-ne p1, v5, :cond_7d

    const/4 v4, 0x1

    .line 248
    invoke-direct {p0, v2, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_80

    .line 250
    :cond_7d
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 253
    :goto_80
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 255
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 257
    :cond_8c
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceAttributeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 258
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 259
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 260
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestStreetPhotoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 261
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestImageStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 262
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 263
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 264
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFilterSkinType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 265
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 266
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFilterLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 267
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFrame(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 269
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 270
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 271
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 272
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurLightStrength(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 273
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurStrengths(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 274
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurReaRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 275
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 276
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 277
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 278
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDxoSceneDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 279
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 280
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 281
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 282
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 283
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 284
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 285
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 286
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetectPitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 287
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 288
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 289
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 290
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 291
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportedZoom2xRemosaic()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 292
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoom2xRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 294
    :cond_fd
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 295
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRawSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-ne p1, v5, :cond_10e

    .line 297
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2RawCropResizeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 298
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2CropRegionCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 299
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2ResizerSizeCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 301
    :cond_10e
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 302
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 303
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAnimalEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 304
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoMacroSwitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 305
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoMacroSwitchSetting(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 306
    iget v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    if-ne v4, v5, :cond_12c

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v4

    if-nez v4, :cond_12c

    .line 307
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 309
    :cond_12c
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 310
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSpotLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 311
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSpotMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 312
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 313
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideo360HdrAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 314
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoAutoFpsModeForISP(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 315
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateStreamingCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 316
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 317
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateYuvCaptureFlipMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 318
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 319
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 320
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 321
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 322
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 323
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 324
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 325
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 327
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 328
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 329
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 330
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 331
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 332
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpVideoIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 333
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExcludeVideoMakeUpBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 334
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSkinOptimization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 335
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 336
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 337
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 338
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 339
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 340
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 341
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 342
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHighLightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 343
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMagicSkyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 344
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMagicSkyResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 345
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperFlashValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 346
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlashStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 347
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateScreenTorchStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 348
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 349
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoRecordStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 351
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 352
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTuningChn(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 353
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLiveResultMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 354
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 355
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLongExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 356
    invoke-direct {p0, v2, v3, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    .line 357
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 359
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 360
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutterMorpho(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 361
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 362
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 363
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlarePreviewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturing()V

    .line 365
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturingBV()V

    .line 366
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBestMomentDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 367
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlashSnapAutoCaptureMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 368
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBestMomentRawHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 369
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 370
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 371
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 372
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 373
    invoke-virtual {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 375
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 376
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTfPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 377
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAirawSN2SRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 379
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperAIRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 380
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAdrcGainValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 381
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 382
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 383
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 386
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSmoothZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 387
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBMDebandingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 388
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureISPTunning(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 391
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHdr10PlusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 393
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIncreaseFreq(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 394
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionAINRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 395
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHALBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 396
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEVListResult(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 397
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCelebritySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 398
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 399
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 400
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFaceProportion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 401
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoHDRFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 402
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHumanBox(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 403
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLivePhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRequestBuilder time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v2
.end method

.method varargs createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 3

    .line 566
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    return-object p1
.end method

.method varargs createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 8

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_14

    .line 551
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0, p2, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 553
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_18

    .line 558
    :cond_14
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 560
    :goto_18
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createSessionRequestBuilder time "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method public get2XRemosaicMode()Z
    .registers 1

    .line 2072
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getZoom2xRemosaicEnabled()Z

    move-result p0

    return p0
.end method

.method getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    .line 2208
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFlashOn()Z
    .registers 2

    .line 1625
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFlashFacadeOn()Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "torch"

    .line 1626
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method isHDRCapture(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 1630
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "on"

    .line 1631
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method isLongExposureCapture(I)Z
    .registers 5

    .line 1639
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLongExposureCapture template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " LongExposureCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_30

    if-ne p1, v2, :cond_41

    .line 1644
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "idle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v1
.end method

.method isRawSRCapture(I)Z
    .registers 3

    .line 1635
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isSupportedRawSR()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result p0

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method varargs removeSurfaceFromBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V
    .registers 8

    .line 520
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p2, v1

    if-nez v2, :cond_f

    .line 522
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "remove null Surface as request target."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    :cond_f
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method public replaceSuperNightToSWMFNR()Z
    .registers 3

    .line 2110
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isAiRawLiteSupport()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformMfnrSupport:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v1, "Night_Light"

    .line 2111
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v0, "Night"

    .line 2112
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method setFlashRequiredInAutoMode(Z)V
    .registers 2

    .line 1244
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    return-void
.end method

.method setSessionCreate(Z)V
    .registers 2

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSessionCreate(Z)V

    return-void
.end method

.method setSessionType(I)V
    .registers 2

    .line 543
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    return-void
.end method

.method setTagValue(Ljava/lang/String;)V
    .registers 4

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method upadetMultiCropZoomRatio()V
    .registers 3

    .line 1199
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    return-void
.end method

.method updateBaseKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 496
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 497
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 498
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 502
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 504
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 505
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 511
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSystemUserID(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method updateMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2960
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMTKProcessRawEnable()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method updateMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2954
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 10

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1188
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v0

    .line 1189
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    div-float v3, v0, v2

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v5, v1, v2

    sub-float v5, v1, v5

    div-float/2addr v5, v4

    float-to-int v4, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1193
    filled-new-array {v3, v4, v0, v1}, [I

    move-result-object v2

    .line 1194
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " w:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1195
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 1611
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBLockStatus()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    .line 1612
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isHDRCapture(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isFlashOn()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1613
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isLongExposureCapture(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1614
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isRawSRCapture(I)Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_29

    :cond_27
    move p2, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move p2, v2

    .line 1615
    :goto_2a
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAwbLockDebug:I

    if-ne v0, v2, :cond_30

    move v1, v2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, p2

    .line 1620
    :goto_34
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRequestAWBLockStatus lockAWB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " awbLockDebug = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAwbLockDebug:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1621
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1423
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v0

    .line 1424
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needLockAe()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1427
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRequestAeLock, lockAe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1428
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2151
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method protected updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 1280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 1279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 1263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1251
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_83

    .line 1253
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x3

    const-string v13, "on"

    sparse-switch v11, :sswitch_data_126

    :goto_25
    move v8, v9

    goto :goto_51

    :sswitch_27
    const-string/jumbo v11, "torch"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    goto :goto_25

    :cond_31
    move v8, v12

    goto :goto_51

    :sswitch_33
    const-string v11, "auto"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    goto :goto_25

    :cond_3c
    move v8, v2

    goto :goto_51

    :sswitch_3e
    const-string v11, "off"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    goto :goto_25

    :cond_47
    move v8, v4

    goto :goto_51

    :sswitch_49
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    goto :goto_25

    :cond_50
    move v8, v6

    :goto_51
    packed-switch v8, :pswitch_data_138

    goto :goto_83

    :goto_55
    :pswitch_55
    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto :goto_85

    .line 1255
    :pswitch_5b
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1259
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1260
    iget-boolean v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    if-nez v11, :cond_6f

    if-eqz v8, :cond_78

    :cond_6f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFlashlightOnWhenRingScreenlightOn:Z

    if-eqz v8, :cond_78

    goto :goto_55

    :cond_78
    move-object v3, v7

    goto :goto_55

    :cond_7a
    :goto_7a
    move-object v5, v7

    goto :goto_85

    :pswitch_7c
    move-object v3, v5

    goto :goto_7a

    .line 1275
    :pswitch_7e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7a

    :cond_83
    :goto_83
    move-object v3, v10

    move-object v5, v3

    .line 1290
    :goto_85
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v8

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_9e

    .line 1291
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v8

    if-eq v8, v9, :cond_ad

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_ad

    goto :goto_b0

    .line 1293
    :cond_9e
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v8

    if-ne v8, v9, :cond_b0

    .line 1294
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_ad

    goto :goto_b0

    :cond_ad
    move-object/from16 v18, v3

    goto :goto_ba

    .line 1298
    :cond_b0
    :goto_b0
    iget-object v3, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v8, "updateRequestAEMode to CONTROL_AE_MODE_OFF"

    invoke-static {v3, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object/from16 v18, v7

    .line 1301
    :goto_ba
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v3, v8, v11

    if-eqz v3, :cond_cd

    .line 1303
    iget-object v3, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v5, "updateRequestFlashMode to FLASH_MODE_OFF"

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object/from16 v19, v7

    goto :goto_cf

    :cond_cd
    move-object/from16 v19, v5

    .line 1307
    :goto_cf
    iget-object v13, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v20

    invoke-interface/range {v13 .. v20}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->forceUpdateRequestFlashMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)[Ljava/lang/Integer;

    move-result-object v3

    .line 1308
    aget-object v5, v3, v6

    .line 1309
    aget-object v3, v3, v4

    .line 1311
    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateRequestFlashMode], aeMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , flashMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_116

    .line 1312
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_116

    const/16 v0, 0x6d

    goto :goto_118

    :cond_116
    const/16 v0, 0x6e

    :goto_118
    invoke-static {v10, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 1314
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1315
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :sswitch_data_126
    .sparse-switch
        0xddf -> :sswitch_49
        0x1ad6f -> :sswitch_3e
        0x2dddaf -> :sswitch_33
        0x696d3fc -> :sswitch_27
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7c
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method

.method public updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateRequestSessionKey +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    .line 413
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 416
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 421
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodySkip(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 428
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTripodSuperNightEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePipDeviceValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 440
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAodMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 445
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 448
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFrontDualFlashColorTemp(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFrontDualFlashStrengthMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 450
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 453
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 457
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPreIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExternalIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestISPTuningEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSensorHighSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideo2kCapSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 464
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-nez p3, :cond_bf

    .line 466
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAbeHdrCheckMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRawScene()I

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAbeHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 469
    :cond_bf
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRaw10ConvertFMT(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateBMZSLBufSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTAPSCaptureNeedYuvSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomEisMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 473
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 474
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p3

    if-eqz p3, :cond_e1

    iget p3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_e1

    .line 475
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateViUllEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 478
    :cond_e1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateInSensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateInsensorScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 480
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p3

    if-eqz p3, :cond_f8

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestIsoAndExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateQcomWarmStart(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 483
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateQualcommFeature2Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 485
    :cond_f8
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAfFf2In1Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSTBlurCaptureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoHDRFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTFEVCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 489
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHdr10PlusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateRequestSessionKey -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateRequestTFEVCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2147
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTFEVCheckerEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 5

    .line 2142
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_f

    goto :goto_14

    .line 2143
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x0

    .line 2142
    :goto_15
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionTurboFusionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    return-void
.end method
