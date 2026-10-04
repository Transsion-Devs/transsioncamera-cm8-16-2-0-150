.class public Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;
.super Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInLowLevel:Z

.field private mInMiddleLevel:Z

.field private mInUpperLevel:Z

.field private mIsLongFocusCamera:Z

.field private mIsNeedUpdateParameter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TurboFusionPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsLongFocusCamera:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInLowLevel:Z

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsNeedUpdateParameter:Z

    return-void
.end method

.method private isHDRScene()Z
    .registers 2

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportSR()Z
    .registers 7

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isQcomCaptureFlowSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, -0x140

    goto :goto_d

    :cond_b
    const/16 v0, 0xf

    .line 195
    :goto_d
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v1

    if-nez v1, :cond_27

    :cond_25
    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 197
    :goto_28
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    if-eqz v4, :cond_30

    if-eqz v1, :cond_30

    move v4, v3

    goto :goto_31

    :cond_30
    move v4, v2

    .line 200
    :goto_31
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAirawNightQuadSupportSR()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 201
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    if-eqz p0, :cond_41

    if-eqz v1, :cond_41

    :cond_3f
    :goto_3f
    move p0, v3

    goto :goto_68

    :cond_41
    move p0, v2

    goto :goto_68

    .line 203
    :cond_43
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 204
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v1

    if-nez v1, :cond_41

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_5d
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mBrightnessValue:I

    if-gt v1, v0, :cond_41

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_3f

    :goto_68
    if-nez v4, :cond_6e

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    return v2

    :cond_6e
    :goto_6e
    return v3
.end method

.method private setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 333
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setAirawSN2SRMode(I)V

    :cond_5
    return-void
.end method

.method private updateZoomRange()V
    .registers 12

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getZoomRangeList()[I

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2b

    .line 341
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    move v1, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v1, v3

    .line 342
    :goto_2c
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 343
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_4f

    :cond_4d
    move v4, v2

    goto :goto_50

    :cond_4f
    :goto_4f
    move v4, v3

    :goto_50
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsLongFocusCamera:Z

    .line 344
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isWideCamera()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 345
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_7b

    :cond_79
    move v4, v2

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v4, v3

    :goto_7c
    if-nez v1, :cond_8d

    .line 347
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    goto :goto_8d

    :cond_8b
    move v1, v2

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v1, v3

    :goto_8e
    if-eqz v0, :cond_126

    .line 348
    array-length v5, v0

    if-le v5, v3, :cond_126

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v5

    aget v6, v0, v2

    if-ge v5, v6, :cond_9d

    move v5, v3

    goto :goto_9e

    :cond_9d
    move v5, v2

    :goto_9e
    if-eqz v1, :cond_b2

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v6

    aget v7, v0, v2

    if-lt v6, v7, :cond_b2

    .line 351
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v6

    aget v7, v0, v3

    if-ge v6, v7, :cond_b2

    move v6, v3

    goto :goto_b3

    :cond_b2
    move v6, v2

    :goto_b3
    if-eqz v1, :cond_c8

    .line 352
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v1

    aget v7, v0, v3

    if-lt v1, v7, :cond_c8

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v1

    const/4 v7, 0x2

    aget v7, v0, v7

    if-gt v1, v7, :cond_c8

    move v1, v3

    goto :goto_c9

    :cond_c8
    move v1, v2

    .line 354
    :goto_c9
    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsLongFocusCamera:Z

    const/4 v8, 0x4

    if-eqz v7, :cond_e1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v7

    const/4 v9, 0x3

    aget v9, v0, v9

    if-lt v7, v9, :cond_e1

    .line 355
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v7

    aget v9, v0, v8

    if-ge v7, v9, :cond_e1

    move v7, v3

    goto :goto_e2

    :cond_e1
    move v7, v2

    .line 356
    :goto_e2
    iget-boolean v9, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsLongFocusCamera:Z

    const/4 v10, 0x5

    if-eqz v9, :cond_f9

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v9

    aget v8, v0, v8

    if-lt v9, v8, :cond_f9

    .line 357
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v8

    aget v9, v0, v10

    if-ge v8, v9, :cond_f9

    move v8, v3

    goto :goto_fa

    :cond_f9
    move v8, v2

    .line 358
    :goto_fa
    iget-boolean v9, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsLongFocusCamera:Z

    if-eqz v9, :cond_108

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v9

    aget v0, v0, v10

    if-lt v9, v0, :cond_108

    move v0, v3

    goto :goto_109

    :cond_108
    move v0, v2

    :goto_109
    if-nez v5, :cond_112

    if-nez v7, :cond_112

    if-eqz v4, :cond_110

    goto :goto_112

    :cond_110
    move v4, v2

    goto :goto_113

    :cond_112
    :goto_112
    move v4, v3

    .line 359
    :goto_113
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInLowLevel:Z

    if-nez v6, :cond_11c

    if-eqz v8, :cond_11a

    goto :goto_11c

    :cond_11a
    move v4, v2

    goto :goto_11d

    :cond_11c
    :goto_11c
    move v4, v3

    .line 360
    :goto_11d
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    if-nez v1, :cond_123

    if-eqz v0, :cond_124

    :cond_123
    move v2, v3

    .line 361
    :cond_124
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    :cond_126
    return-void
.end method


# virtual methods
.method protected setAlgorithmOff(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_a

    const/16 p0, 0xa

    if-ne p2, p0, :cond_a

    const/4 p0, 0x0

    .line 239
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_a
    return-void
.end method

.method protected setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    goto :goto_1b

    .line 264
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->shouldApplyLivePhotoRestrictions()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_14

    .line 265
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    return-void

    .line 268
    :cond_14
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    const/4 p0, 0x4

    .line 269
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_9

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 301
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->shouldApplyLivePhotoRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 303
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    goto :goto_20

    .line 305
    :cond_1d
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 307
    :goto_20
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 308
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    return-void

    .line 310
    :cond_27
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isDXOTestSupport()Z

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_51

    .line 311
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseDXOArea()Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 312
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result p2

    if-eqz p2, :cond_51

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInLowLevel:Z

    if-nez p2, :cond_51

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 314
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-nez p2, :cond_51

    .line 315
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 316
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_7d

    .line 317
    :cond_51
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isQcomAirawSN2SRSupport()Z

    move-result p2

    if-eqz p2, :cond_6c

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    if-eqz p2, :cond_6c

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 319
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-nez p2, :cond_6c

    .line 320
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 321
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_7d

    .line 323
    :cond_6c
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x2

    goto :goto_7a

    :cond_79
    const/4 p0, 0x6

    :goto_7a
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    .line 326
    :goto_7d
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 327
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    return-void
.end method

.method protected setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    if-ne p2, p0, :cond_9

    const/4 p0, 0x5

    .line 232
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_9
    return-void
.end method

.method protected setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 5

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v0, :cond_a

    .line 218
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    return-void

    .line 220
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingValue:Ljava/lang/String;

    const-string p2, "0"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 221
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p0

    if-ne p0, v1, :cond_1e

    const/4 p0, 0x0

    .line 222
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_1e
    return-void
.end method

.method protected setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1b

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportTranssionHdr()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 250
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    :cond_15
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1b

    .line 254
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    goto :goto_34

    .line 279
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isQcomAirawSN2SRSupport()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 281
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-nez p2, :cond_22

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    const/4 p0, 0x5

    .line 283
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    return-void

    :cond_22
    const/4 p2, 0x0

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x2

    goto :goto_31

    :cond_30
    const/4 p0, 0x6

    :goto_31
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 3

    .line 99
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result p0

    return p0
.end method

.method public updateBrightnessAndISOParameters([II)Z
    .registers 5

    .line 82
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateBrightnessAndISOParameters([II)Z

    .line 85
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isQcomCaptureFlowSupport()Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p2, -0x140

    goto :goto_10

    :cond_e
    const/16 p2, 0xf

    :goto_10
    const/4 v0, 0x0

    .line 88
    aget p1, p1, v0

    const/4 v1, 0x1

    if-gt p1, p2, :cond_18

    move p1, v1

    goto :goto_19

    :cond_18
    move p1, v0

    .line 89
    :goto_19
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsNeedUpdateParameter:Z

    if-eq p2, p1, :cond_20

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mIsNeedUpdateParameter:Z

    return v1

    :cond_20
    return v0
.end method

.method protected updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I
    .registers 13

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v0

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->isHDRScene()Z

    move-result v1

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->updateZoomRange()V

    const/16 v2, 0x65

    if-ne p2, v2, :cond_19

    .line 110
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v3

    if-nez v3, :cond_19

    .line 111
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 114
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v3, :cond_3d

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->isSupportSR()Z

    move-result v3

    if-nez v3, :cond_3d

    if-eq p2, v4, :cond_34

    const/4 v3, 0x7

    if-ne p2, v3, :cond_2e

    goto :goto_34

    :cond_2e
    const/16 v3, 0x9

    if-ne p2, v3, :cond_3d

    :cond_32
    move p2, v6

    goto :goto_3d

    .line 116
    :cond_34
    :goto_34
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p2

    if-eqz p2, :cond_32

    move p2, v5

    .line 122
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiRawMfnrReplaceRemosaic()Z

    move-result v3

    if-nez v3, :cond_67

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v7, "key_super_definition"

    .line 123
    invoke-virtual {v3, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "off"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_67

    iget v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 124
    invoke-virtual {v7}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getAiRawRemosaicLimitISO()I

    move-result v7

    if-ge v3, v7, :cond_67

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInLowLevel:Z

    if-eqz v3, :cond_67

    if-nez v1, :cond_67

    const/16 p2, 0xa

    :cond_67
    const/16 v3, 0xb

    if-eqz v0, :cond_90

    .line 132
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result p2

    if-nez p2, :cond_8e

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p2

    if-eqz p2, :cond_7c

    goto :goto_8e

    .line 135
    :cond_7c
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->isSupportSR()Z

    move-result p2

    if-eqz p2, :cond_88

    if-eqz v1, :cond_86

    move p2, v3

    goto :goto_90

    :cond_86
    move p2, v2

    goto :goto_90

    :cond_88
    if-eqz v1, :cond_8c

    move p2, v4

    goto :goto_90

    :cond_8c
    move p2, v5

    goto :goto_90

    .line 133
    :cond_8e
    :goto_8e
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 141
    :cond_90
    :goto_90
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSuperNightLiteValue()V

    .line 143
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result v7

    if-eqz v7, :cond_a7

    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    if-nez v7, :cond_a3

    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    if-eqz v7, :cond_a7

    :cond_a3
    if-nez v0, :cond_a7

    move v0, v6

    goto :goto_a8

    :cond_a7
    const/4 v0, 0x0

    .line 147
    :goto_a8
    sget-object v7, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCustomAlgorithm, isSuperNightModeSupportSR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isSupportSR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->isSupportSR()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isHDRScene: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mHalIlluminationType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_e5

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->isSupportSR()Z

    move-result v0

    if-eqz v0, :cond_e9

    :cond_e5
    if-eqz v1, :cond_e8

    move v2, v3

    :cond_e8
    move p2, v2

    .line 156
    :cond_e9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v0

    if-nez v0, :cond_10c

    if-eqz p2, :cond_10a

    const/4 v0, 0x6

    if-eq p2, v0, :cond_10a

    const/16 v0, 0x8

    if-ne p2, v0, :cond_10c

    .line 160
    :cond_10a
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 165
    :cond_10c
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p1

    if-ne p1, v6, :cond_12b

    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTFAiShutterLimitISO()I

    move-result v0

    if-gt p1, v0, :cond_12b

    if-eqz v1, :cond_11f

    goto :goto_12c

    .line 169
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_129

    move v4, v5

    goto :goto_12c

    :cond_129
    move v4, v6

    goto :goto_12c

    :cond_12b
    move v4, p2

    .line 175
    :goto_12c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_143

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoSupportHDR()Z

    move-result p1

    if-nez p1, :cond_143

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_141

    goto :goto_142

    :cond_141
    move v5, v6

    :goto_142
    move v4, v5

    .line 180
    :cond_143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[updateCustomAlgorithm] mHalIlluminationType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " change to illuminationType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", zoom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getDeviceZoomRatio()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", HDR state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_hdr"

    .line 183
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mInLowLevel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInLowLevel:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mInMiddleLevel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInMiddleLevel:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mInUpperLevel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->mInUpperLevel:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mZoomValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {v7, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4
.end method

.method public updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V
    .registers 6

    .line 61
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCapturingFlag:Z

    if-eqz v0, :cond_d

    .line 62
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/policy/TurboFusionPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateParameters return because capturing...."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2b

    .line 68
    new-instance p2, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    .line 71
    :cond_2b
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_mu_stereo"

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "f0.0"

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_53

    .line 73
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraParameters;->setTfPortraitMode(I)V

    return-void

    :cond_53
    const/4 p0, 0x0

    .line 75
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTfPortraitMode(I)V

    :cond_57
    return-void
.end method
