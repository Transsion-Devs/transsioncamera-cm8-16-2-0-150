.class public Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final SETTING_KEY:Ljava/lang/String; = "key_video_preisp"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final VALUE_AINR:I

.field private final VALUE_HDR:I

.field private final VALUE_OFF:Ljava/lang/String;

.field private final VALUE_ON:Ljava/lang/String;

.field private mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

.field private mIsModeSupport:Z

.field private mPreIspSupportFrontCamera:Z

.field private mPreIspSupportVideoQuality:[Ljava/lang/String;

.field private mVideoPreIspSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPreisp"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 59
    const-string v0, "off"

    sput-object v0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 60
    const-string v0, "on"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->VALUE_ON:Ljava/lang/String;

    .line 61
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->VALUE_OFF:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->VALUE_HDR:I

    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->VALUE_AINR:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mIsModeSupport:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mVideoPreIspSupport:Z

    return-void
.end method

.method private getPreIspSupportMode(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 379
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    .line 382
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_18

    .line 383
    rem-int/2addr p0, p1

    :cond_18
    return p0
.end method

.method private isBackWideCamera()Z
    .registers 7

    .line 243
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSupportWide:Z

    .line 244
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportSat:Z

    .line 245
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_18

    return v3

    .line 250
    :cond_18
    sget-object v0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wideCameraId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", getCurrentCameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mSatNewStreamId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , getCameraIdBeforeSAT\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraIdBeforeSAT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_91

    .line 255
    :cond_6a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v1, :cond_90

    .line 256
    iget v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraIdBeforeSAT()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8e

    if-eqz v0, :cond_8d

    goto :goto_8e

    :cond_8d
    return v3

    :cond_8e
    :goto_8e
    const/4 p0, 0x1

    return p0

    :cond_90
    return v0

    :cond_91
    :goto_91
    return v3
.end method

.method private mergeVideoQualityRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mPreIspSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 220
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 222
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method private postRelation(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 209
    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreispRestriction;->getRestriction(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 211
    const-string v1, "on"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 212
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mergeVideoQualityRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 214
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_17
    return-void
.end method

.method private setCheckValues(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getSupport()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 229
    const-string p1, "off"

    .line 231
    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-object p1
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 5

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 237
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->setCheckValues(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1b
    return-void
.end method

.method private updateFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 3

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isSupportFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isSupportFaceBeautyQuality()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 370
    const-string p0, "mild"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 371
    const-string/jumbo p0, "value_facebeauty_video_preisp"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    return-void

    .line 373
    :cond_18
    const-string p0, "off"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 13

    .line 292
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mVideoPreIspSupport:Z

    const/4 v1, -0x1

    const-string v2, "off"

    const/4 v3, 0x0

    const-string v4, "0"

    if-eqz v0, :cond_e7

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isSupportCameraLogicId()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_e7

    .line 305
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 307
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getExternalIspMode()I

    move-result v5

    .line 309
    const-string v6, "on"

    if-nez v5, :cond_28

    move-object v7, v2

    goto :goto_29

    :cond_28
    move-object v7, v6

    .line 314
    :goto_29
    sget-object v8, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[configParameters] video_preIsp value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , oldValue :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", PreIspFakeIdAndModes = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 315
    invoke-interface {v5}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPreIspFakeIdAndModes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-static {v8, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 317
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto/16 :goto_df

    .line 319
    :cond_69
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPreIspMode(I)V

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setExternalIspMode(I)V

    .line 321
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->shouldSetFPSToNull()Z

    move-result p0

    if-eqz p0, :cond_83

    .line 323
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 325
    :cond_83
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureCustomTuning(Ljava/lang/String;)V

    goto :goto_df

    .line 329
    :cond_87
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPreIspFakeIdAndModes()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getPreIspSupportMode(Ljava/util/List;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b4

    .line 330
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPreIspMode(I)V

    .line 331
    const-string v2, "25"

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 332
    new-instance v3, Landroid/util/Range;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 333
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureCustomTuning(Ljava/lang/String;)V

    goto :goto_c9

    :cond_b4
    const/4 v2, 0x2

    .line 335
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPreIspMode(I)V

    .line 336
    const-string v2, "26"

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->shouldSetFPSToNull()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 338
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 340
    :cond_c6
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureCustomTuning(Ljava/lang/String;)V

    .line 342
    :goto_c9
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->updateFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 343
    const-string p0, "1"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setExternalIspMode(I)V

    goto :goto_df

    .line 349
    :cond_d6
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 350
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->updateFaceBeautyMode(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 354
    :cond_df
    :goto_df
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoPreIspValue(Ljava/lang/String;)V

    return v1

    .line 293
    :cond_e7
    :goto_e7
    sget-object v0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v5, "video preIsp is not support!!!"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoPreIspMode(I)V

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setExternalIspMode(I)V

    .line 296
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamingCustomTuning(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureCustomTuning(Ljava/lang/String;)V

    .line 298
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "video_facebeauty_off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_118

    .line 299
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    :cond_118
    return v1
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 185
    const-string p0, "key_video_preisp"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 175
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreispSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mPreIspSupportVideoQuality:[Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreIspSupportFrontCamera:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mPreIspSupportFrontCamera:Z

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspDefaultOn:Z

    if-eqz p0, :cond_1f

    .line 79
    const-string p0, "on"

    sput-object p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->DEFAULT_VALUE:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isBackWideCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 87
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->storeValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mIsModeSupport:Z

    return p0
.end method

.method public isSupportCameraLogicId()Z
    .registers 3

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 264
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isPreIspFakeTeleCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 265
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mPreIspSupportFrontCamera:Z

    if-eqz p0, :cond_55

    goto :goto_57

    :cond_55
    const/4 p0, 0x0

    return p0

    :cond_57
    :goto_57
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFaceBeauty()Z
    .registers 2

    .line 269
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportFaceBeautyQuality()Z
    .registers 4

    .line 273
    const-string v0, "key_video_quality"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 274
    sget-object v0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFaceBeautyQuality quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 275
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mIsModeSupport:Z

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mCameraIdBeforeSAT:Ljava/lang/String;

    .line 160
    const-string v0, "key_anti_video"

    invoke-virtual {p0, v0, p1, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 161
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mIsModeSupport:Z

    return-void
.end method

.method public onSatCameraChanged(I)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onSatCameraChanged(I)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 105
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->setCheckValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->postRelation(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->sendSettingChangeRequest()V

    :cond_22
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    const-string v1, "key_video_quality"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_4f

    if-eqz p2, :cond_b1

    .line 123
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b1

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_b1

    .line 127
    :cond_4b
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->storeValue(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_4f
    const-string v1, "key_video_portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_facebeauty"

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_spot"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_transsion_filter"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_auto_video_fps"

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_enhance"

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_makeup"

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_effect"

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    const-string v1, "key_video_frame"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    goto :goto_9c

    .line 145
    :cond_98
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_9c
    :goto_9c
    if-eqz p2, :cond_b1

    .line 137
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b1

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ab

    goto :goto_b1

    .line 141
    :cond_ab
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->storeValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->sendSettingChangeRequest()V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public pause()V
    .registers 2

    .line 190
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mCameraIdBeforeSAT:Ljava/lang/String;

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->postRelation(Ljava/lang/String;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 196
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 282
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPreIspFakeIdAndModes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->isSupportCameraLogicId()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mVideoPreIspSupport:Z

    .line 283
    const-string p1, "off"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->mVideoPreIspSupport:Z

    if-eqz p1, :cond_2a

    .line 285
    const-string p1, "on"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_2a
    sget-object p1, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/videopreisp/VideoPreisp;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 201
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
