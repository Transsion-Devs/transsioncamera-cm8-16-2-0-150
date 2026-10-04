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

    .line 839
    :pswitch_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    if-eqz p1, :cond_19

    array-length p2, p1

    if-lez p2, :cond_19

    aget p1, p1, v2

    if-le p1, v1, :cond_19

    .line 840
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 842
    :cond_19
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 790
    :pswitch_20
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    if-eqz p1, :cond_d5

    array-length p2, p1

    if-lez p2, :cond_d5

    .line 791
    aget p2, p1, v2

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 792
    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    add-int/lit8 v3, p2, 0x1

    .line 794
    invoke-static {p1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v3, p2, [I

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v4, v1

    .line 796
    invoke-static {p1, v4, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->combineTo64Bit([I[I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    .line 798
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, v1

    .line 799
    invoke-static {p1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v3, p2, [I

    mul-int/lit8 v4, p2, 0x5

    add-int/2addr v4, v1

    .line 801
    invoke-static {p1, v4, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->combineTo64Bit([I[I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspTuningIndex:[J

    .line 803
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    aget p2, p1, v2

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    mul-int/lit8 p0, p2, 0x3

    add-int/2addr p0, v1

    .line 804
    invoke-static {p1, p0, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 836
    :pswitch_7a
    new-array p1, v0, [I

    fill-array-data p1, :array_11a

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 781
    :pswitch_82
    new-array p1, p2, [I

    .line 782
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 783
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 818
    :pswitch_8a
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    if-eqz p1, :cond_d6

    array-length p2, p1

    if-lez p2, :cond_d6

    .line 819
    aget p1, p1, v2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    .line 820
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    .line 821
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 822
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    move p1, v2

    .line 823
    :goto_a4
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    aget v0, p2, v2

    if-ge p1, v0, :cond_d5

    .line 824
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    add-int/lit8 v4, p1, 0x1

    aget v5, p2, v4

    int-to-long v5, v5

    aput-wide v5, v3, p1

    .line 825
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    aget v0, p2, v0

    aput v0, v3, p1

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v3, p2, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    add-int/2addr v3, v1

    aget v3, p2, v3

    aput v3, v0, p1

    .line 827
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

    .line 830
    :cond_d6
    new-array p1, v0, [I

    fill-array-data p1, :array_12e

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    return-void

    .line 815
    :pswitch_de
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoFrameInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 812
    :pswitch_e6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightAeExpoInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 808
    :pswitch_ee
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHDRAeExpoInfo()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePostAlgoConfig([I)V

    return-void

    .line 787
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

    .line 1922
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1924
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "off"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private combineTo64Bit([I[I)[J
    .registers 11

    .line 870
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_20

    .line 874
    array-length p0, p1

    .line 875
    new-array v0, p0, [J

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p0, :cond_1f

    .line 879
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

    .line 871
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

    .line 2806
    :cond_4
    const-string/jumbo v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "flowingwater"

    .line 2807
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "lightpainting"

    .line 2808
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

    .line 1194
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

    .line 2348
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2349
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    if-eqz p3, :cond_1c

    .line 2352
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 2353
    invoke-static {p4, v0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p4

    .line 2358
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

    .line 2360
    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 2361
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/SettingInfo$Area;

    if-eqz v1, :cond_49

    if-nez p4, :cond_39

    goto :goto_49

    .line 2365
    :cond_39
    iget-object v1, v1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2, p4}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2367
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sget v3, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, p3, v0

    goto :goto_55

    .line 2363
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

    .line 2953
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawLiteMotionDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAIRawLiteMotionDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAbeHdrCheckMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2646
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

    .line 2629
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_16

    .line 2630
    :cond_10
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 2631
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    :cond_1d
    const/4 p2, 0x0

    .line 2634
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAbeHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2547
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

    .line 2179
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAdrcgainValue()F

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAdrcGainValue(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateAfFf2In1Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2300
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAfFfMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAfFfMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2474
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

    .line 2699
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-eqz v0, :cond_31

    .line 2700
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 2701
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 2702
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2703
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2705
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2708
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiShutterMorpho(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2713
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMorpho()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMorpho(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2280
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2282
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2285
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 2286
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2496
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBMDebandingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2885
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

    .line 2837
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBMLowLightMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateBMZSLBufSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2842
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCustomZslBufSize()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMCustomZslBufSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBestMomentDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2824
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBestMomentDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateBestMomentRawHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2832
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBestMomentRawHDRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 2624
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureBurstNumber(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2559
    new-instance v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->asdEffectColorCard()Z

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->hasValidFace()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode()Z

    move-result v2

    invoke-direct {v4, v0, v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;-><init>(ZZZ)V

    .line 2560
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureCustomTuning()Ljava/lang/String;

    move-result-object v1

    .line 2561
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    .line 2560
    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureCustomTuning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureISPTunning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2889
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    .line 2890
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureISPTunning()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_11
    return-void
.end method

.method private updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2874
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTag()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTag(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateCaptureZSLTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;IZI)V
    .registers 6

    .line 1075
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p3, :cond_28

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isStillCaptureTemplate(I)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_28

    .line 1079
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureZSLTimestamps()[J

    move-result-object p2

    if-eqz p2, :cond_28

    .line 1080
    array-length p3, p2

    if-nez p3, :cond_19

    goto :goto_28

    .line 1083
    :cond_19
    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    invoke-static {p4, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p3

    .line 1084
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    aget-wide p2, p2, p3

    invoke-interface {p0, p2, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureZSLTimestamp(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_28
    :goto_28
    return-void
.end method

.method private updateCelebritySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2915
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCelebritySceneMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCelebritySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1465
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1468
    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    .line 1472
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

    .line 1473
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 10

    .line 1477
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 1479
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateControlSceneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    const-string v1, "dsp_super_night"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "hdr"

    if-nez v1, :cond_35

    const-string v1, "meg_super_night"

    .line 1481
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1482
    :cond_35
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHDRForSuperNight()Z

    move-result v1

    if-eqz v1, :cond_3e

    move-object v0, v2

    .line 1491
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

    .line 1495
    :cond_4f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Night_Light"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move-object v0, v2

    .line 1498
    :cond_5c
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_78

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    if-eq v1, v3, :cond_77

    .line 1499
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_77

    .line 1500
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_78

    :cond_77
    move-object v0, v2

    .line 1505
    :cond_78
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a0

    .line 1506
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1507
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1508
    const-string v0, "auto"

    goto :goto_a0

    :cond_9f
    move-object v0, v2

    .line 1513
    :cond_a0
    :goto_a0
    const-string v1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    move-object v0, v2

    .line 1516
    :cond_ad
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dual_video"

    if-eqz v1, :cond_b6

    move-object v0, v4

    .line 1520
    :cond_b6
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needUpdateSceneForPortrait()Z

    move-result v1

    const-string v5, "sprd_portrait"

    if-eqz v1, :cond_e4

    .line 1521
    const-string/jumbo v1, "val_sdof"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ce

    move-object v0, v5

    .line 1525
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

    .line 1530
    :cond_e4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needTurnHDROff()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1531
    const-string v0, "off"

    :cond_ee
    if-eqz v0, :cond_185

    .line 1536
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

    .line 1541
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

    .line 1559
    :goto_130
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateControlSceneMode(I)I

    move-result v1

    .line 1560
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

    .line 1561
    const-string/jumbo v0, "val_magic_sky"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    :cond_163
    const-string/jumbo v0, "val_hdr"

    .line 1562
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1563
    :cond_170
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYUVHdrCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_17c

    .line 1565
    :cond_177
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v7, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYUVHdrCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1567
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

    .line 2910
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 2911
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

    .line 2910
    :goto_13
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDxoCountry(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V
    .registers 7

    .line 2687
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

    .line 2688
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExifModeInfo()I

    move-result p2

    :goto_27
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2f

    .line 2690
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setExifModeInfo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2f
    return-void
.end method

.method private updateExternalIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2791
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

    .line 2991
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceProportion()F

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceProportion(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2375
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFakeDualLensMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2870
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlareCaptureEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlareCaptureEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlashSnapAutoCaptureMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2828
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashSnapAutoCaptureMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashSnapAutoCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlashStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2539
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1228
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 1229
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    .line 1228
    invoke-static {v1, v2, v3, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    .line 1230
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateFrontDualFlashColorTemp(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2316
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashColorTemp()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFrontDualFlashStrengthMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2320
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashStrengthMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2482
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2484
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2487
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGenderAttributeValue()Ljava/lang/String;

    move-result-object v0

    .line 2488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2489
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getAttributeValue is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2492
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

    .line 2725
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkModeType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2729
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGoldWaterMarkSize()[I

    move-result-object v0

    .line 2730
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

    .line 2731
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x4

    .line 2732
    new-array v2, v1, [I

    if-eqz v0, :cond_81

    .line 2733
    array-length v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_81

    .line 2734
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_41

    goto :goto_47

    .line 2737
    :cond_41
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    :goto_45
    move-object v2, v0

    goto :goto_4c

    .line 2735
    :cond_47
    :goto_47
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    goto :goto_45

    .line 2739
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

    .line 2742
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2744
    :cond_87
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2878
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

    .line 2961
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHALBMLowLightMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHalBmLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateHdr10PlusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2996
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdr10PlusMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdr10PlusMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateHeavyCapturing()V
    .registers 2

    .line 2638
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHeavyCapturing(Z)V

    return-void
.end method

.method private updateHeavyCapturingBV()V
    .registers 2

    .line 2642
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHeavyCapturingBV(I)V

    return-void
.end method

.method private updateHighLightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2516
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-eqz v0, :cond_b

    .line 2517
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

    .line 3015
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanBox()[I

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetectInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateInSensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2966
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getInSensorZoomEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setInSensorZoomEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateIncreaseFreq(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2895
    const-string/jumbo v0, "val_ai_art_museum"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    .line 2896
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIncreaseFrequency(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2898
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getIncreaseFrequencyEnable()I

    move-result v0

    .line 2899
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCurrentFaces()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    if-lt v2, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 2901
    :goto_23
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIncreaseFrequency(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateInsensorScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2970
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getInsensorScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setInsensorScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2775
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2776
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getIs24HourFormat()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIs24HourFormat(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 7

    .line 2031
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2032
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLensCorrectionMode()I

    move-result v0

    .line 2033
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

    .line 2037
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLensCorrectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2039
    :cond_36
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLensCorrectionMode()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLensCorrectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLivePhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 3020
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLivePhotoMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLivePhotoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLiveResultMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2607
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLiveResultMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 1929
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongPressBurst(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2454
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMacroLampValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2522
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2523
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2527
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyResult()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 7

    .line 1214
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1215
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 1216
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 1215
    invoke-static {v1, v2, v3, v4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 1217
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1220
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    .line 1221
    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_33
    return-void
.end method

.method private updateMoonDetectPitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2470
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetectPitch()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionPitch(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2466
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2462
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightHawkMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1452
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOISSupport()Z

    move-result v0

    .line 1453
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

    .line 1455
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "on"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1456
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

    .line 2103
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2CropRegionCustomize()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2CropRegionCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateP2RawCropResizeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2099
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2RawCropResizeEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2RawCropResizeEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateP2ResizerSizeCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2107
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getP2ResizerSizeCustomize()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setP2ResizerSizeCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlareLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2812
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlareLocation()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPMasterFlareLocation([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlareMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2799
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPMasterFlareMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPMasterFlareMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePMasterFlarePreviewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2816
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

    .line 2555
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2769
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2770
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPlainLocationText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPlainLocationText(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2478
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePostAlgoConfig([I)V
    .registers 9

    if-eqz p1, :cond_5d

    .line 851
    array-length v0, p1

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    .line 852
    aget v1, p1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    .line 853
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    .line 854
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    .line 855
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    .line 856
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    move v1, v0

    .line 857
    :goto_1d
    aget v2, p1, v0

    if-ge v1, v2, :cond_5c

    .line 858
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    add-int/lit8 v4, v1, 0x1

    aget v5, p1, v4

    int-to-long v5, v5

    aput-wide v5, v3, v1

    .line 859
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    aput v2, v3, v1

    .line 860
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v3, p1, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    .line 861
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v3, p1, v0

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, v2, v1

    .line 862
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

    .line 865
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

    .line 2749
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewGoldWaterMarkSize()[I

    move-result-object v0

    .line 2750
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

    .line 2751
    new-array v2, v1, [I

    if-eqz v0, :cond_79

    .line 2752
    array-length v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_79

    .line 2753
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result v2

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_39

    goto :goto_3f

    .line 2756
    :cond_39
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    :goto_3d
    move-object v2, v0

    goto :goto_44

    .line 2754
    :cond_3f
    :goto_3f
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    goto :goto_3d

    .line 2758
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

    .line 2761
    :cond_79
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPreviewGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 1443
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object v0

    .line 1444
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFpsRange:Landroid/util/Range;

    .line 1446
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewRange use postAlgoFpsRange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1448
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V

    return-void
.end method

.method private updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2781
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_d

    .line 2782
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getProWatermarkStyle()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setProWatermarkStyle(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_d
    return-void
.end method

.method private updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V
    .registers 8

    .line 2611
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportProcessRawMode:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    if-ne p4, v0, :cond_33

    .line 2612
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

    .line 2616
    :goto_26
    iget p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mDumpFirstFrameValue:I

    if-eq p4, v1, :cond_2e

    if-nez p2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, p3

    .line 2619
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setProcessRawMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_33
    return-void
.end method

.method private updateQcomWarmStart(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 1697
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecSensitivity()[F

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecSensitivity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1698
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameControlLuxIndex()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameControlLuxIndex(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1699
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameDarkBoostGain()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameDarkBoostGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1700
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAecFrameAdrcGain()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecFrameAdrcGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1701
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAecCameraId(Ljava/lang/Integer;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1702
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbGains()[F

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAwbWarmstartGain([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1703
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbFrameControlCCT()F

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStartAwbWarmstartCCT(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1704
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAwbDecisionAfterTC()[F

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAwbDecisionAfterTC([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateQuadSwitchValue(Landroid/hardware/camera2/CaptureRequest$Builder;ILandroid/view/Surface;)V
    .registers 13

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    return-void

    .line 2923
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result p2

    int-to-float p2, p2

    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr p2, v0

    .line 2924
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result v0

    .line 2925
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v1

    .line 2927
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->AIRAW_SUPPORT_CAMERA_IDS:[I

    array-length v2, v2

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v3, :cond_43

    .line 2928
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v2

    if-nez v2, :cond_31

    .line 2929
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isLongFocusCamera()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongFocusBaseZoomRatio()F

    move-result v2

    mul-float/2addr p2, v2

    :cond_31
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_41

    float-to-double v2, p2

    const-wide v7, 0x400599999999999aL    # 2.7

    cmpg-double v2, v2, v7

    if-gez v2, :cond_41

    :goto_3f
    move v2, v5

    goto :goto_4e

    :cond_41
    move v2, v6

    goto :goto_4e

    :cond_43
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_41

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_41

    goto :goto_3f

    .line 2935
    :goto_4e
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

    .line 2938
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoQuadSupport:Z

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2935
    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2939
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoQuadSupport:Z

    if-eqz p2, :cond_9f

    if-eqz v2, :cond_9f

    const/16 p2, 0x1e

    if-le v0, p2, :cond_9f

    .line 2942
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, v5, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setQuadSwitchValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p3, :cond_9b

    .line 2944
    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2946
    :cond_9b
    invoke-virtual {p0, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    return-void

    .line 2948
    :cond_9f
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v6, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setQuadSwitchValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateQualcommFeature2Mode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFeature2Mode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFeature2Mode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRTDofEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRaw10ConvertFMT(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2765
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRaw10ConvertFMT(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRawSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2091
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRawSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2005
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2006
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2064
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRemosaicMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequest360VideoHDRInitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRInitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->set360VideoHdrInitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequest360VideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1736
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 15

    .line 1573
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 1575
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

    .line 1592
    :pswitch_94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1586
    :pswitch_99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1598
    :pswitch_9e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1589
    :pswitch_a3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1595
    :pswitch_a8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1601
    :pswitch_ad
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1580
    :pswitch_b2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1577
    :pswitch_b7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1604
    :pswitch_bc
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c9

    .line 1583
    :pswitch_c5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1609
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

    .line 1610
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1612
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1613
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, v11, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1614
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getManualAWBValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1616
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

    .line 2650
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoFrameInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAeeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAirawSN2SRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2170
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAirawSN2SRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAirawSN2SRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAnimalEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2422
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionUseAutoFocusSwitch()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2423
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoFocusSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2425
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAnimalEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAodMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2721
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->aodMode()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateAodMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1744
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getArcFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setArcFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2023
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2027
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdVersion()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdVersion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoMacroSwitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2430
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoMacroSwitchSetting(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2434
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitchSetting()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoMacroSwitchSetting(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 2261
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result p2

    if-nez p2, :cond_10

    .line 2263
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2266
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p2

    .line 2267
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2268
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "autoWatermarkMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2272
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2273
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2275
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, -0x1

    invoke-interface {p0, p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2308
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWConvertEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2304
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWPortraitEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1890
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isTZServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 1891
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

    .line 1884
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1885
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

    .line 2147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureTime(J)V

    .line 2148
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_13
    return-void
.end method

.method private updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2672
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getColorLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2253
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2048
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCusIspAsd()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2056
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSmartDenoise()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2248
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

    .line 2249
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2243
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

    .line 2244
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDxoSceneDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2044
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

    .line 2667
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEVList([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method private updateRequestExcludeVideoMakeUpBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1816
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExcludeVideoMakeupBeauty()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionExcludeVideoMakeUpBeauty(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 8

    .line 1420
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5b

    if-nez v0, :cond_5b

    .line 1422
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5b

    .line 1423
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7735940

    cmp-long p2, v1, v3

    if-lez p2, :cond_5b

    .line 1424
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

    .line 1425
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    div-int/2addr v0, p2

    .line 1426
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

    .line 1427
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1429
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

    .line 1430
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 9

    .line 1712
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v0

    .line 1713
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isNeedRestrictExposureTime()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    if-ne p2, v2, :cond_16

    const-wide/32 v2, 0x7735940

    .line 1714
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1717
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

    .line 1721
    :cond_4a
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1723
    :goto_53
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2404
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionUseAutoFocusSwitch()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2405
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoFocusSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2407
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceAttributeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1854
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1855
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceAttributeInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceAttributeValue([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1824
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1825
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1376
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

    .line 1377
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isFaceDetectionEnable()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 1381
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1382
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1383
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1384
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1385
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1387
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face detect not supported."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1390
    :cond_58
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 1391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1390
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1392
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 14

    const/4 v0, 0x1

    .line 1335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1331
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 1332
    const-string v3, "fixed"

    if-eqz v2, :cond_78

    .line 1333
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

    .line 1338
    :pswitch_5d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1350
    :pswitch_62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1347
    :pswitch_67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    .line 1344
    :pswitch_6c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    :pswitch_71
    move-object v0, v1

    goto :goto_79

    .line 1341
    :pswitch_73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v0, 0x0

    .line 1356
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

    .line 1360
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

    .line 1361
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

    .line 1360
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1362
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1364
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 1366
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusLength()F

    move-result p2

    const v0, 0x3b03126f    # 0.002f

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_f4

    .line 1367
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusLength()F

    move-result p0

    goto :goto_f8

    .line 1369
    :cond_f4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusDistance()F

    move-result p0

    .line 1371
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

    .line 1933
    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result v1

    .line 1934
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object v2

    .line 1935
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v3

    .line 1936
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    .line 1937
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v5

    .line 1938
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v6

    .line 1939
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAINRMode()I

    move-result v7

    .line 1940
    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1941
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mMulticamCaptureFusionFastNightConflictSupport:Z

    if-eqz v8, :cond_34

    .line 1944
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v10, "Night_Light"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_35

    :cond_34
    const/4 v8, 0x0

    .line 1946
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

    .line 1953
    :goto_6a
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v12

    int-to-float v12, v12

    sget v13, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr v12, v13

    .line 1954
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBrightnessValue()I

    move-result v13

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFusionModeBVLimit()I

    move-result v14

    if-lt v13, v14, :cond_7e

    move v13, v11

    goto :goto_7f

    :cond_7e
    const/4 v13, 0x0

    .line 1955
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

    .line 1960
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBrightnessValue()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",getFusionModeBVLimit():"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getFusionModeBVLimit()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",ainrMode:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1955
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

    .line 1965
    :goto_f7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-nez v4, :cond_10d

    .line 1966
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

    .line 1970
    :goto_10e
    const-string v4, "on"

    if-eqz v1, :cond_132

    .line 1971
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1972
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isWideCamera()Z

    move-result v1

    if-eqz v1, :cond_132

    if-eqz v13, :cond_132

    if-nez v8, :cond_132

    if-eq v7, v11, :cond_132

    .line 1976
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

    .line 1979
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

    .line 2654
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHDRAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHDRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1914
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1918
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2412
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionUseAutoFocusSwitch()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2413
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoFocusSwitch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2414
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoFocusSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_19
    return-void

    .line 2417
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHumanDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2500
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanEffectMode()Ljava/lang/String;

    move-result-object v0

    .line 2501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2502
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 1666
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    .line 1671
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

    .line 1675
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1676
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestISPTuningEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2257
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISPTuningEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableIspTuningData(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestImageStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1756
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getImageStyleId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setImageStyleId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestIsoAndExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 13

    .line 1680
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v0

    .line 1681
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    .line 1682
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isNeedRestrictExposureTime()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    if-ne p2, v4, :cond_1a

    const-wide/32 v5, 0x7735940

    .line 1683
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

    .line 1686
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v5, v6, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_2c
    if-eq v0, v3, :cond_39

    cmp-long v9, v1, v7

    if-nez v9, :cond_39

    .line 1688
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_39
    if-ne v0, v3, :cond_45

    cmp-long v9, v1, v7

    if-eqz v9, :cond_45

    .line 1690
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, v2, v4, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_45
    if-eq v0, v3, :cond_50

    cmp-long v0, v1, v7

    if-eqz v0, :cond_50

    .line 1692
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v5, v6, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_50
    return-void
.end method

.method private updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1247
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object v0

    .line 1248
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

    .line 1250
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method private updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1243
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

    .line 1234
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegQuality()I

    move-result p0

    if-lez p0, :cond_19

    int-to-byte p0, p0

    .line 1237
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1238
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method private updateRequestLongExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 2676
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v0

    .line 2677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2678
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureTripod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongExposureScene(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2680
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v0

    .line 2681
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2682
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLongExposureCaptureState(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2a
    return-void
.end method

.method private updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2127
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2312
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLuminanceValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2658
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMFNRAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMFNRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1804
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1800
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1812
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1808
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 6

    .line 2131
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

    .line 2133
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 2134
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_27
    return-void

    .line 2137
    :cond_28
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 2138
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p2, 0x2

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2140
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

    .line 1998
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1999
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2001
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2015
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 7

    .line 1829
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMultiFaceBeautyMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1830
    const-string/jumbo v1, "value_facebeauty_video_asd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "value_facebeauty_video_preisp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_84

    .line 1834
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

    .line 1835
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyPreviewInApp:Z

    if-eqz p2, :cond_3f

    .line 1836
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v2, "off"

    invoke-interface {p2, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_44

    .line 1838
    :cond_3f
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1840
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

    .line 1842
    :pswitch_70
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1846
    :pswitch_7a
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyFeaturesLevel()[I

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1831
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

    .line 2111
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

    .line 2112
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v1, "Night_Light"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->replaceSuperNightToSWMFNR()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2113
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2115
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->replaceSuperNightToSWMFNR()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_42

    :cond_3e
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v0

    .line 2116
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2184
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNight3dnrAlgo()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2662
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightAeExpoInfo()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2188
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightMorHdsScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2019
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1728
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1860
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2200
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2202
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

    .line 2011
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isQuickPreviewEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurLightStrength(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1872
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLightStrength()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1864
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurReaRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1876
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurReaRatio()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurStrengths(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1868
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurStrengths()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2324
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2326
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFlashMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2329
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

    .line 2330
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlashStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2334
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object v0

    .line 2335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2336
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFalshStatus is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2339
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1896
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1898
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportLogicalCameraMode()[I

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1900
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1c
    return-void

    .line 1903
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isLogicalCameraSupport()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->projectSupportISZ()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    .line 1906
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "off"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3b

    .line 1904
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1908
    :goto_3b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVsdofLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1909
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 2236
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    .line 2237
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 2238
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

    .line 1880
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSkinOptimization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2458
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkinOptimization()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSkinOptimizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1820
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSlimBodyLevels()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1792
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodySkip(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1796
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimSkip()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodySkip(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2717
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreamFlip()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestStreetPhotoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1752
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreetPhotoFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStreetPhotoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperAIRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2174
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

    .line 1760
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNvsSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 1988
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1989
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTfPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2166
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTfPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTfPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1659
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getThumbnailSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1661
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1748
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2052
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2192
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1764
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTripodSuperNightEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1993
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperNightAlgoTypeToHal()V

    .line 1994
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTripodSuperNightEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTuningChn(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1461
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

    .line 1784
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoEffectId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1772
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilterLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1780
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoFilterLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilterSkinType(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1776
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterSkinType()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFrame(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1788
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFrameId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 1732
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2196
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .registers 4

    if-nez p3, :cond_2d

    .line 1397
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isStillCaptureTemplate(I)Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p2, "stellartrack"

    .line 1398
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    const-string p2, "star"

    .line 1399
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureScene()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 1400
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1402
    :cond_2d
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2695
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2400
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSMVRRequestParams()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSTBlurCaptureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 3000
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

    .line 2507
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2509
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2510
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 2511
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_17
    return-void
.end method

.method private updateScreenTorchStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2543
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenTorchStatus()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSensorHighSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2095
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

    .line 2882
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSmoothZoomValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSmoothZoomValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateStreamingCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2598
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->asdEffectColorCard()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->hasValidFace()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;-><init>(ZZZ)V

    .line 2599
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreamingCustomTuning()I

    move-result p0

    invoke-interface {v1, p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setStreamingCustomTuning(ILcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2290
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSuperAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2292
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2295
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 2296
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2060
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperFlashValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2531
    const-string v0, "Night_Light"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2532
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "off"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2534
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperNightAlgoTypeToHal()V
    .registers 2

    .line 1984
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

    .line 2087
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

    .line 3005
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

    .line 2851
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2852
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

    .line 2859
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2860
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void
.end method

.method private updateTAPSCaptureNeedYuvSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2846
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTAPSCaptureNeedYuvSize()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureNeedYuvSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2392
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranFaceDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionAINRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2906
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAINRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionAINRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2396
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateViUllEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2974
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getViUllEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setViUllEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideo2kCapSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2820
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideo2kCapSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideo2kCapSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideo360HdrAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2573
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideo360HdrScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoAutoFpsModeForISP(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2795
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoFpsModeForISP()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoAutoFpsModeForISP(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoHDRFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 3010
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHdrFormat()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHDRFormat(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2442
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2438
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPreIspMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2787
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPreIspMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPreIspMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoRecordStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2551
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoRecordStatus(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSpotLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2446
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSpotLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSpotLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSpotMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2450
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSpotMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSpotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2569
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2565
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2577
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightResolution()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 2581
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

    .line 2582
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result v0

    if-lez v0, :cond_40

    .line 2583
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2586
    :cond_40
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_50

    .line 2587
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2590
    :cond_50
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_60

    .line 2591
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2594
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateYuvCaptureFlipMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 2603
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getYuvCaptureFlipMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoom2xRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 8

    .line 2068
    const-string/jumbo v0, "val_asd"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "val_super_definition"

    .line 2069
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "val_ultrahd"

    .line 2070
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2f

    .line 2078
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZoom2xRemosaicMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 2071
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

    .line 2072
    :goto_39
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getImageStyleId()I

    move-result v3

    if-nez v3, :cond_41

    move v3, v2

    goto :goto_42

    :cond_41
    move v3, v1

    .line 2073
    :goto_42
    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    mul-int/lit8 v4, v4, 0x2

    .line 2074
    iget v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    if-ne v5, v2, :cond_55

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRealZoomRatio()I

    move-result v5

    if-lt v5, v4, :cond_55

    if-eqz v0, :cond_55

    if-eqz v3, :cond_55

    move v1, v2

    .line 2076
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZoom2xRemosaicMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoomEisMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 2866
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
    .registers 16

    .line 1088
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getOverrideSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1089
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    div-float/2addr v1, v2

    .line 1090
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRealZoomRatio()I

    move-result v3

    .line 1091
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getClickUpZoomRatio()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 1092
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getClickDownZoomRatio()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    if-eqz v0, :cond_31

    .line 1094
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_31

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_31

    .line 1095
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_155

    .line 1097
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_3d

    const v0, 0x3faaaaab

    goto :goto_4a

    .line 1102
    :cond_3d
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 1105
    :goto_4a
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1106
    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v8, v6

    mul-float/2addr v2, v8

    int-to-float v9, v7

    div-float v10, v2, v9

    .line 1109
    iget-object v11, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    if-eqz v11, :cond_79

    .line 1110
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1111
    iget-object v12, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lez v11, :cond_79

    if-ge v11, v6, :cond_79

    if-lez v12, :cond_79

    if-ge v12, v7, :cond_79

    int-to-float v11, v11

    div-float v11, v2, v11

    cmpg-float v12, v1, v11

    if-gez v12, :cond_79

    move v1, v11

    .line 1121
    :cond_79
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFovWideCrop()Z

    move-result v11

    if-eqz v11, :cond_a9

    .line 1123
    const-string v11, "1"

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 1124
    iget-object v11, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle60fps:Landroid/graphics/Rect;

    goto :goto_90

    .line 1126
    :cond_8e
    iget-object v11, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    :goto_90
    if-eqz v11, :cond_a9

    .line 1129
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 1130
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v12, :cond_a9

    if-ge v12, v6, :cond_a9

    if-lez v11, :cond_a9

    if-ge v11, v7, :cond_a9

    int-to-float v11, v12

    div-float/2addr v2, v11

    cmpg-float v11, v1, v2

    if-gez v11, :cond_a9

    move v1, v2

    .line 1141
    :cond_a9
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v2

    if-eqz v2, :cond_124

    const v2, 0x3b03126f    # 0.002f

    add-float v11, v10, v2

    cmpl-float v11, v0, v11

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    if-lez v11, :cond_db

    div-float v0, v8, v0

    sub-float/2addr v9, v0

    div-float/2addr v9, v12

    float-to-int v0, v9

    .line 1144
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v8, v1

    float-to-int v8, v8

    .line 1145
    invoke-static {v8, v13, v6}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v8

    mul-int/lit8 v9, v0, 0x2

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    int-to-float v10, v0

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 1146
    invoke-static {v9, v13, v7}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v9

    .line 1144
    invoke-virtual {v2, v13, v0, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10e

    :cond_db
    sub-float/2addr v10, v2

    cmpg-float v2, v0, v10

    if-gez v2, :cond_fd

    mul-float/2addr v0, v9

    sub-float/2addr v8, v0

    div-float/2addr v8, v12

    float-to-int v0, v8

    .line 1149
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    mul-int/lit8 v8, v0, 0x2

    sub-int v8, v6, v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    int-to-float v10, v0

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 1150
    invoke-static {v8, v13, v6}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v8

    div-float/2addr v9, v1

    float-to-int v9, v9

    .line 1151
    invoke-static {v9, v13, v7}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v9

    .line 1149
    invoke-virtual {v2, v0, v13, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10e

    .line 1153
    :cond_fd
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v8, v1

    float-to-int v2, v8

    .line 1154
    invoke-static {v2, v13, v6}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v2

    div-float/2addr v9, v1

    float-to-int v8, v9

    .line 1155
    invoke-static {v8, v13, v7}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v8

    .line 1153
    invoke-virtual {v0, v13, v13, v2, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1157
    :goto_10e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 1158
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    .line 1157
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_155

    .line 1160
    :cond_124
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1161
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1162
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 1163
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    div-float/2addr v8, v1

    float-to-int v7, v8

    .line 1164
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    sub-int v9, v0, v6

    sub-int v10, v2, v7

    add-int/2addr v0, v6

    add-int/2addr v2, v7

    invoke-virtual {v8, v9, v10, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1167
    :goto_155
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 1168
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCropRectangle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isSatSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " zoomRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " realZoomRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mMulitiCropRegionZoomRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " clickUpZoomRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " clickDownZoomRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1171
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 1172
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1173
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRealZoomRatio(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1174
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v4, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setClickUpZoomRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1175
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v5, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setClickDownZoomRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1176
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocalLength()I

    move-result v2

    if-lez v2, :cond_1d4

    .line 1177
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocalLength()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFocalLength(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1d4
    if-eqz v0, :cond_1ea

    .line 1180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1181
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1185
    :cond_1ea
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->projectSupportISZ()Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 1186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1f3
    return-void

    .line 1189
    :cond_1f4
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

    .line 2214
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method checkShutterDone(Landroid/hardware/camera2/CaptureResult;)Z
    .registers 2

    .line 2224
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

    .line 2383
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    .line 2385
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

    .line 1008
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

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1010
    array-length v1, p4

    move v4, v2

    :goto_15
    if-ge v4, v1, :cond_29

    aget-object v5, p4, v4

    if-eqz v5, :cond_21

    .line 1014
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1012
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "add null Surface as request target."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1016
    :cond_29
    invoke-virtual {p0, v0, p1, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 1017
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1020
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1021
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1022
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1023
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1024
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1025
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1026
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1027
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1028
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1029
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1032
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1033
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1034
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isCurrentAppModeRequiredOnContinuousShot()Z

    move-result p4

    if-eqz p4, :cond_5e

    .line 1035
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object p4

    goto :goto_61

    :cond_5e
    const-string/jumbo p4, "val_couti"

    .line 1034
    :goto_61
    invoke-direct {p0, p4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1036
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1037
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1038
    iget-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p4}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p4

    if-eqz p4, :cond_75

    .line 1039
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1042
    :cond_75
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "value_gold_watermark_on"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8c

    .line 1043
    iget-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "goldWatermarkMode is not support burst: "

    invoke-static {p4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1046
    :cond_8c
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1047
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1048
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    if-le p2, v3, :cond_99

    move p4, v3

    goto :goto_9a

    :cond_99
    move p4, v2

    .line 1049
    :goto_9a
    invoke-direct {p0, v0, p4, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    .line 1050
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1051
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1052
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1053
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p4

    if-eqz p4, :cond_b4

    .line 1054
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_bd

    .line 1056
    :cond_b4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isWideCamera()Z

    move-result p4

    if-eqz p4, :cond_bd

    .line 1057
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1060
    :cond_bd
    :goto_bd
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p4

    if-eqz p4, :cond_cd

    .line 1061
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->closetFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1062
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1064
    :cond_cd
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1065
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1066
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :goto_d8
    if-ge v2, p2, :cond_e7

    .line 1068
    invoke-direct {p0, v0, p1, p3, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureZSLTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;IZI)V

    .line 1069
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
    if-eq v4, v10, :cond_c7

    .line 626
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c7
    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x1

    if-eq v4, v13, :cond_d2

    if-eq v4, v12, :cond_d2

    if-ne v4, v11, :cond_f9

    .line 631
    :cond_d2
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 632
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 633
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 634
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 635
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 636
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlareLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 637
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePMasterFlarePreviewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 638
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSkinOptimization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 639
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 640
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 641
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 642
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 643
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 645
    :cond_f9
    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 646
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlareCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 647
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 648
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 649
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 650
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 651
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2RawCropResizeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 652
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2CropRegionCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 653
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateP2ResizerSizeCustomize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 654
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRawSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 655
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 656
    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFaceProportion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 657
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 658
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutterMorpho(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 659
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v14

    if-eqz v14, :cond_135

    if-ne v4, v8, :cond_135

    .line 661
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 662
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 664
    :cond_135
    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHumanBox(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-ne v4, v13, :cond_143

    .line 666
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHDRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 667
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 668
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_143
    if-ne v4, v12, :cond_14b

    .line 671
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 672
    invoke-direct {v0, v5, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_14b
    if-ne v4, v11, :cond_156

    .line 675
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v15

    invoke-interface {v14, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_156
    const/16 v14, 0x8

    const/4 v15, 0x3

    if-eq v4, v15, :cond_15d

    if-ne v4, v14, :cond_160

    .line 678
    :cond_15d
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_160
    if-eq v4, v15, :cond_16f

    if-eq v4, v14, :cond_16f

    .line 681
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v10

    const-string v15, "None"

    invoke-interface {v14, v10, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 683
    :cond_16f
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

    :goto_186
    if-ge v10, v7, :cond_3a2

    .line 685
    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "takeMultiFramePicture createMultiFrameRequest: i = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v4, v8, :cond_224

    .line 689
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v8

    if-ne v8, v13, :cond_1a8

    move v8, v13

    goto :goto_1a9

    :cond_1a8
    move v8, v9

    :goto_1a9
    xor-int/lit8 v18, v8, 0x1

    .line 691
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v19

    if-eqz v19, :cond_1bf

    if-eqz v8, :cond_1bd

    if-nez v10, :cond_1ba

    goto :goto_1bd

    :cond_1ba
    move/from16 v18, v9

    goto :goto_1bf

    :cond_1bd
    :goto_1bd
    move/from16 v18, v13

    :cond_1bf
    :goto_1bf
    move/from16 v11, v18

    .line 694
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

    .line 695
    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v14

    invoke-interface {v12, v14, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMDebandingMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v8, :cond_1f6

    .line 697
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-nez v10, :cond_1f1

    const/16 v12, 0x138d

    goto :goto_1f2

    :cond_1f1
    move v12, v9

    :goto_1f2
    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1fb

    .line 699
    :cond_1f6
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8, v9, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 701
    :goto_1fb
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getBMLowLightMode()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 702
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8, v7, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 703
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    add-int/lit8 v12, v10, 0x1

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 704
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 705
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getMTKProcessRawEnable()I

    move-result v12

    invoke-interface {v8, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_222
    :goto_222
    move v8, v13

    goto :goto_270

    .line 706
    :cond_224
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    if-eq v8, v13, :cond_260

    const/16 v8, 0x9

    if-eq v4, v8, :cond_260

    const/16 v8, 0xa

    if-eq v4, v8, :cond_260

    const/4 v8, 0x7

    if-eq v4, v8, :cond_260

    const/16 v8, 0xb

    if-ne v4, v8, :cond_23a

    goto :goto_260

    .line 714
    :cond_23a
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    const/4 v11, 0x2

    if-eq v8, v11, :cond_249

    .line 715
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v8

    const/16 v11, 0x14

    if-ne v8, v11, :cond_26e

    :cond_249
    const/4 v8, 0x3

    if-ge v10, v8, :cond_24e

    move v11, v13

    goto :goto_24f

    :cond_24e
    move v11, v9

    .line 719
    :goto_24f
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getHeavyCapturingBV()I

    move-result v8

    const/16 v12, -0xf

    if-le v8, v12, :cond_222

    .line 720
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v8, v8, v10

    if-ltz v8, :cond_25e

    goto :goto_222

    :cond_25e
    move v8, v9

    goto :goto_270

    .line 711
    :cond_260
    :goto_260
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseAIRawLiteZSL()Z

    move-result v8

    if-nez v8, :cond_26e

    .line 712
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v8, v8, v10

    if-nez v8, :cond_26e

    move v11, v13

    goto :goto_222

    :cond_26e
    move v11, v9

    goto :goto_222

    :goto_270
    if-eqz v2, :cond_291

    .line 723
    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v12, v12, v10

    if-nez v12, :cond_291

    .line 724
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_28d

    .line 725
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x4

    if-eq v12, v14, :cond_28d

    .line 726
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_291

    .line 727
    :cond_28d
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_296

    :cond_291
    if-eqz v2, :cond_296

    .line 729
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 731
    :cond_296
    :goto_296
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

    .line 732
    invoke-virtual {v0, v11}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    const/4 v12, 0x7

    if-eq v4, v12, :cond_2ca

    const/16 v12, 0xb

    if-eq v4, v12, :cond_2ca

    const/16 v12, 0xa

    if-ne v4, v12, :cond_2ce

    :cond_2ca
    :goto_2ca
    const/4 v14, 0x4

    const/4 v15, 0x3

    goto/16 :goto_355

    :cond_2ce
    const/16 v14, 0x9

    if-ne v4, v14, :cond_305

    .line 738
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v13, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 739
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v15, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspTuningIndex:[J

    aget-wide v14, v15, v10

    invoke-interface {v11, v14, v15, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPTuningIndex(JLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 740
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v14, v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 741
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v14, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    aget-wide v14, v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 742
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v7, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPFrameCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 743
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v11, v10, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureISPFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_2ca

    :cond_305
    const/4 v14, 0x4

    if-eq v4, v14, :cond_328

    if-eq v4, v13, :cond_328

    const/4 v15, 0x3

    if-eq v4, v15, :cond_329

    const/16 v12, 0x8

    if-ne v4, v12, :cond_312

    goto :goto_329

    :cond_312
    if-nez v11, :cond_355

    const/4 v11, 0x6

    if-eq v4, v11, :cond_355

    .line 753
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mExposureValue:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 754
    invoke-virtual {v0, v13}, Lcom/transsion/camera/adapter/CameraParameters;->needLockAe(Z)V

    goto :goto_355

    :cond_328
    const/4 v15, 0x3

    .line 748
    :cond_329
    :goto_329
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsoGainValue:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 749
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mShutterGainValue:[J

    aget-wide v16, v12, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 750
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIspGainValue:[I

    aget v12, v12, v10

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAeIspGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 751
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v12, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mArdcGainValue:[I

    aget v12, v12, v10

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setArdcGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 756
    :cond_355
    :goto_355
    iget-object v11, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureId()I

    move-result v12

    filled-new-array {v12, v10, v7}, [I

    move-result-object v12

    invoke-interface {v11, v12, v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCaptureTaskInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 757
    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 758
    invoke-direct {v0, v5, v4, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateQuadSwitchValue(Landroid/hardware/camera2/CaptureRequest$Builder;ILandroid/view/Surface;)V

    .line 759
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCelebritySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 760
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 761
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetectPitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 762
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 763
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAIRawLiteMotionDetectionValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 764
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v11

    invoke-direct {v0, v5, v8, v11, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V

    .line 765
    invoke-direct {v0, v5, v1, v9}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    if-eqz v3, :cond_389

    if-nez v10, :cond_389

    .line 767
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_38c

    .line 769
    :cond_389
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 771
    :goto_38c
    invoke-direct {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 772
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 773
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x6

    const/16 v11, 0xa

    const/16 v12, 0x9

    goto/16 :goto_186

    :cond_3a2
    return-object v6
.end method

.method public varargs createMultiFrameRequestQcom(IZZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 16

    .line 889
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz p2, :cond_10

    .line 891
    filled-new-array {p4}, [Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_13

    .line 893
    :cond_10
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :goto_13
    const/4 v1, 0x0

    .line 896
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 897
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCommonKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 898
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 899
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 900
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 901
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 902
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 903
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v2

    invoke-direct {p0, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAbeHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 904
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturing()V

    .line 905
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHeavyCapturingBV()V

    .line 906
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestArcFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 907
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 908
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 909
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 910
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdVersion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 911
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 912
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 913
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 914
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 915
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 916
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCaptureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 917
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProWatermarkStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 918
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIs24HourFormat(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 919
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePlainLocationText(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 920
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 921
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGoldWaterMarkSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 922
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 923
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 924
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 925
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLensCorrectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 926
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateExifModeInfo(Landroid/hardware/camera2/CaptureRequest$Builder;ZI)V

    .line 927
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 928
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGroupCaptureEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 929
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateDxoCountry(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 930
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 931
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateProcessRawMode(Landroid/hardware/camera2/CaptureRequest$Builder;ZII)V

    .line 932
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 933
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEVListResult(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 934
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 935
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 936
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 937
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 938
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 939
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 940
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 943
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getOfflineBurstCaptureNumber()I

    move-result v2

    .line 944
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isEVListValid()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 945
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrameNumFromEVList()I

    move-result v2

    .line 946
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result v4

    if-ne v4, v3, :cond_d0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    if-lez v4, :cond_d0

    if-le v2, v3, :cond_d0

    .line 948
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_ce

    .line 949
    filled-new-array {p5}, [Landroid/view/Surface;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :cond_ce
    move p5, v1

    goto :goto_e3

    .line 951
    :cond_d0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v4

    if-lez v4, :cond_e2

    if-le v2, v3, :cond_e2

    .line 952
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 953
    filled-new-array {p5}, [Landroid/view/Surface;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    :cond_e2
    move p5, v3

    .line 956
    :goto_e3
    invoke-virtual {p0, v0, p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 957
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCaptureBurstNumber(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 958
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLongPressBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 959
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_f2
    if-ge v4, v2, :cond_164

    if-nez v4, :cond_107

    if-eqz p6, :cond_fb

    .line 963
    invoke-virtual {v0, p6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_fb
    if-eqz p2, :cond_101

    .line 966
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_123

    :cond_101
    if-eqz p4, :cond_123

    .line 968
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_123

    :cond_107
    if-eqz p6, :cond_10c

    .line 972
    invoke-virtual {v0, p6}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_10c
    if-eqz p2, :cond_112

    .line 975
    invoke-virtual {p0, v0, p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->removeSurfaceFromBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_123

    :cond_112
    if-eqz p4, :cond_123

    if-eqz p3, :cond_120

    .line 977
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v5

    if-lez v5, :cond_120

    .line 978
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_123

    .line 980
    :cond_120
    invoke-virtual {v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 984
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

    .line 985
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 986
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

    .line 988
    :cond_157
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 989
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f2

    .line 991
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

    .line 2083
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getZoom2xRemosaicEnabled()Z

    move-result p0

    return p0
.end method

.method getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    .line 2219
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

    .line 1636
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFlashFacadeOn()Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "torch"

    .line 1637
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

    .line 1641
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "on"

    .line 1642
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

    .line 1650
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

    .line 1651
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

    .line 1655
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

    .line 1646
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

    .line 2121
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isAiRawLiteSupport()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformMfnrSupport:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v1, "Night_Light"

    .line 2122
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v0, "Night"

    .line 2123
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

    .line 1255
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

    .line 1210
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

    .line 2985
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

    .line 2979
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_c
    return-void
.end method

.method updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 10

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1199
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v0

    .line 1200
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

    .line 1204
    filled-new-array {v3, v4, v0, v1}, [I

    move-result-object v2

    .line 1205
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

    .line 1206
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    .line 1622
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBLockStatus()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    .line 1623
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isHDRCapture(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isFlashOn()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1624
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isLongExposureCapture(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1625
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

    .line 1626
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

    .line 1631
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

    .line 1632
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1434
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v0

    .line 1435
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needLockAe()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 1438
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

    .line 1439
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 2162
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method protected updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 1291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 1290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 1274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1262
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_83

    .line 1264
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

    .line 1266
    :pswitch_5b
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1270
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1271
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

    .line 1286
    :pswitch_7e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7a

    :cond_83
    :goto_83
    move-object v3, v10

    move-object v5, v3

    .line 1301
    :goto_85
    iget-object v8, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v8}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v8

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_9e

    .line 1302
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v8

    if-eq v8, v9, :cond_ad

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_ad

    goto :goto_b0

    .line 1304
    :cond_9e
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v8

    if-ne v8, v9, :cond_b0

    .line 1305
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_ad

    goto :goto_b0

    :cond_ad
    move-object/from16 v18, v3

    goto :goto_ba

    .line 1309
    :cond_b0
    :goto_b0
    iget-object v3, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v8, "updateRequestAEMode to CONTROL_AE_MODE_OFF"

    invoke-static {v3, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object/from16 v18, v7

    .line 1312
    :goto_ba
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v8

    cmp-long v3, v8, v11

    if-eqz v3, :cond_cd

    .line 1314
    iget-object v3, v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v5, "updateRequestFlashMode to FLASH_MODE_OFF"

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object/from16 v19, v7

    goto :goto_cf

    :cond_cd
    move-object/from16 v19, v5

    .line 1318
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

    .line 1319
    aget-object v5, v3, v6

    .line 1320
    aget-object v3, v3, v4

    .line 1322
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

    .line 1323
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_116

    const/16 v0, 0x6d

    goto :goto_118

    :cond_116
    const/16 v0, 0x6e

    :goto_118
    invoke-static {v10, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 1325
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1326
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

    .line 2158
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTFEVCheckerEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 5

    .line 2153
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_f

    goto :goto_14

    .line 2154
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x0

    .line 2153
    :goto_15
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionTurboFusionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    return-void
.end method
