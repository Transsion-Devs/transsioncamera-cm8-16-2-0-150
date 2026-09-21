.class public Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;
.super Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdrcGainValue:F

.field private mInLongCameraMiddleLevel:Z

.field private mInLowLevel:Z

.field private mInMiddleLevel:Z

.field private mInUpperLevel:Z

.field private mIsLongFocusCamera:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperAiRawPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mIsLongFocusCamera:Z

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInUpperLevel:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLongCameraMiddleLevel:Z

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mAdrcGainValue:F

    return-void
.end method

.method private isHDRScene()Z
    .registers 2

    .line 161
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
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPmasterSupportSuperAirawSR()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 166
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v1

    :goto_24
    if-eqz v0, :cond_2c

    .line 167
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInUpperLevel:Z

    if-eqz v3, :cond_2c

    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v2

    .line 170
    :goto_2d
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAirawNightQuadSupportSR()Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz v0, :cond_3d

    .line 171
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    if-eqz p0, :cond_3d

    :goto_3b
    move p0, v1

    goto :goto_4a

    :cond_3d
    move p0, v2

    goto :goto_4a

    :cond_3f
    if-eqz v0, :cond_3d

    .line 173
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    if-eqz v0, :cond_3d

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    if-nez p0, :cond_3d

    goto :goto_3b

    :goto_4a
    if-nez v3, :cond_50

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    return v2

    :cond_50
    :goto_50
    return v1
.end method

.method private setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 290
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setAirawSN2SRMode(I)V

    :cond_5
    return-void
.end method

.method private updateZoomRange()V
    .registers 12

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getZoomRangeList()[I

    move-result-object v0

    .line 297
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

    .line 298
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

    .line 299
    :goto_2c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isWideCamera()Z

    move-result v4

    if-nez v4, :cond_55

    .line 300
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 301
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_55

    :cond_53
    move v4, v2

    goto :goto_56

    :cond_55
    :goto_55
    move v4, v3

    :goto_56
    if-nez v1, :cond_67

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_67

    :cond_65
    move v1, v2

    goto :goto_68

    :cond_67
    :goto_67
    move v1, v3

    .line 303
    :goto_68
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 304
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    iget v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    goto :goto_8b

    :cond_89
    move v5, v2

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v5, v3

    :goto_8c
    iput-boolean v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mIsLongFocusCamera:Z

    if-eqz v0, :cond_12a

    .line 306
    array-length v5, v0

    if-le v5, v3, :cond_12a

    .line 307
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

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v6

    aget v7, v0, v2

    if-lt v6, v7, :cond_b2

    .line 309
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

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v1

    aget v7, v0, v3

    if-lt v1, v7, :cond_c8

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v1

    const/4 v7, 0x2

    aget v7, v0, v7

    if-gt v1, v7, :cond_c8

    move v1, v3

    goto :goto_c9

    :cond_c8
    move v1, v2

    .line 312
    :goto_c9
    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mIsLongFocusCamera:Z

    const/4 v8, 0x4

    if-eqz v7, :cond_e1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v7

    const/4 v9, 0x3

    aget v9, v0, v9

    if-lt v7, v9, :cond_e1

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v7

    aget v9, v0, v8

    if-ge v7, v9, :cond_e1

    move v7, v3

    goto :goto_e2

    :cond_e1
    move v7, v2

    .line 314
    :goto_e2
    iget-boolean v9, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mIsLongFocusCamera:Z

    const/4 v10, 0x5

    if-eqz v9, :cond_f9

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v9

    aget v8, v0, v8

    if-lt v9, v8, :cond_f9

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v8

    aget v9, v0, v10

    if-ge v8, v9, :cond_f9

    move v8, v3

    goto :goto_fa

    :cond_f9
    move v8, v2

    :goto_fa
    iput-boolean v8, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLongCameraMiddleLevel:Z

    .line 316
    iget-boolean v8, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mIsLongFocusCamera:Z

    if-eqz v8, :cond_10a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v8

    aget v0, v0, v10

    if-lt v8, v0, :cond_10a

    move v0, v3

    goto :goto_10b

    :cond_10a
    move v0, v2

    :goto_10b
    if-nez v5, :cond_114

    if-nez v7, :cond_114

    if-eqz v4, :cond_112

    goto :goto_114

    :cond_112
    move v4, v2

    goto :goto_115

    :cond_114
    :goto_114
    move v4, v3

    .line 317
    :goto_115
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    if-nez v6, :cond_120

    .line 318
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLongCameraMiddleLevel:Z

    if-eqz v4, :cond_11e

    goto :goto_120

    :cond_11e
    move v4, v2

    goto :goto_121

    :cond_120
    :goto_120
    move v4, v3

    :goto_121
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    if-nez v1, :cond_127

    if-eqz v0, :cond_128

    :cond_127
    move v2, v3

    .line 319
    :cond_128
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInUpperLevel:Z

    :cond_12a
    return-void
.end method


# virtual methods
.method protected setAlgorithmOff(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_a

    const/16 p0, 0xa

    if-ne p2, p0, :cond_a

    const/4 p0, 0x0

    .line 196
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    :cond_a
    return-void
.end method

.method protected setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    if-eqz p1, :cond_1a

    if-nez p2, :cond_5

    goto :goto_1a

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->shouldApplyLivePhotoRestrictions()Z

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    .line 222
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 223
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void

    .line 225
    :cond_14
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 226
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method protected setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-nez p2, :cond_13

    .line 259
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    const/4 v2, 0x7

    if-eq v1, v2, :cond_13

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 266
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->shouldApplyLivePhotoRestrictions()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 268
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    goto :goto_29

    .line 270
    :cond_26
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 272
    :goto_29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 273
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void

    .line 274
    :cond_30
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAirawNightQuadSupportSR()Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    if-nez p2, :cond_4c

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 276
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 277
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    const/4 p0, 0x6

    .line 278
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void

    .line 280
    :cond_4c
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 281
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_5f

    const/4 p0, 0x4

    goto :goto_60

    :cond_5f
    const/4 p0, 0x3

    :goto_60
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void
.end method

.method protected setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    if-ne p2, p0, :cond_9

    const/4 p0, 0x6

    .line 189
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    :cond_9
    return-void
.end method

.method protected setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    if-ne p2, p0, :cond_9

    const/4 p0, 0x5

    .line 182
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    :cond_9
    return-void
.end method

.method protected setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1c

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportTranssionHdr()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 207
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    :cond_15
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1c

    const/4 p0, 0x2

    .line 211
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    .line 236
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    if-eq p2, v1, :cond_f

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 242
    :cond_f
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAirawNightQuadSupportSR()Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    if-nez p2, :cond_2b

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 244
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result p2

    if-nez p2, :cond_2b

    .line 245
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    const/4 p0, 0x6

    .line 246
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void

    .line 248
    :cond_2b
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->setAirawSN2SRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x4

    goto :goto_39

    :cond_38
    const/4 p0, 0x3

    :goto_39
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    return-void
.end method

.method public updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 4

    .line 75
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    .line 77
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAdrcGainValueResult(Landroid/hardware/camera2/CaptureResult;)[F

    move-result-object p1

    if-eqz p1, :cond_12

    .line 78
    array-length p2, p1

    if-lez p2, :cond_12

    const/4 p2, 0x0

    .line 79
    aget p1, p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mAdrcGainValue:F

    :cond_12
    return v0
.end method

.method public updateBrightnessAndISOParameters([II)Z
    .registers 3

    .line 68
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateBrightnessAndISOParameters([II)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I
    .registers 10

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->isHDRScene()Z

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v1

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->updateZoomRange()V

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRSettingOff()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v2, :cond_2f

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->isSupportSR()Z

    move-result v2

    if-nez v2, :cond_2f

    if-eq p2, v3, :cond_26

    const/4 v2, 0x7

    if-ne p2, v2, :cond_20

    goto :goto_26

    :cond_20
    const/16 v2, 0x9

    if-ne p2, v2, :cond_2f

    :cond_24
    move p2, v5

    goto :goto_2f

    .line 94
    :cond_26
    :goto_26
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p2

    if-eqz p2, :cond_24

    move p2, v4

    .line 100
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiRawMfnrReplaceRemosaic()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v6, "key_super_definition"

    .line 101
    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "off"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 102
    invoke-virtual {v6}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getAiRawRemosaicLimitISO()I

    move-result v6

    if-ge v2, v6, :cond_59

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    if-eqz v2, :cond_59

    if-nez v0, :cond_59

    const/16 p2, 0xa

    :cond_59
    const/16 v2, 0x65

    const/16 v6, 0xb

    if-eqz v1, :cond_84

    .line 110
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result p2

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result p2

    if-eqz p2, :cond_70

    goto :goto_82

    .line 113
    :cond_70
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->isSupportSR()Z

    move-result p2

    if-eqz p2, :cond_7c

    if-eqz v0, :cond_7a

    move v3, v6

    goto :goto_80

    :cond_7a
    move v3, v2

    goto :goto_80

    :cond_7c
    if-eqz v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v3, v4

    :goto_80
    move p2, v3

    goto :goto_84

    .line 111
    :cond_82
    :goto_82
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 119
    :cond_84
    :goto_84
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightMode()Z

    move-result v3

    if-eqz v3, :cond_97

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLongCameraMiddleLevel:Z

    if-nez v3, :cond_94

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    if-eqz v3, :cond_97

    :cond_94
    if-nez v1, :cond_97

    goto :goto_9d

    .line 123
    :cond_97
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->isSupportSR()Z

    move-result v1

    if-eqz v1, :cond_a1

    :goto_9d
    if-eqz v0, :cond_a0

    move v2, v6

    :cond_a0
    move p2, v2

    .line 128
    :cond_a1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v0

    if-nez v0, :cond_c4

    if-eqz p2, :cond_c2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_c2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_c4

    .line 132
    :cond_c2
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 137
    :cond_c4
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p1

    if-ne p1, v5, :cond_e5

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result p1

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-eq p1, v0, :cond_da

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result p1

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    if-ne p1, v0, :cond_e5

    .line 139
    :cond_da
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_e4

    move p2, v4

    goto :goto_e5

    :cond_e4
    move p2, v5

    .line 144
    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoSupportHDR()Z

    move-result p1

    if-nez p1, :cond_fc

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result p1

    if-eqz p1, :cond_fa

    goto :goto_fb

    :cond_fa
    move v4, v5

    :goto_fb
    move p2, v4

    .line 149
    :cond_fc
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSuperNightLiteValue()V

    .line 150
    sget-object p1, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCustomAlgorithm] mHalIlluminationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", change to illuminationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HDR state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_hdr"

    .line 152
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInLowLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInLowLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInMiddleLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInMiddleLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInUpperLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mInUpperLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method public updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V
    .registers 5

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V

    .line 60
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/SuperAiRawPolicy;->mAdrcGainValue:F

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setAdrcgainValue(F)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 62
    new-instance p0, Landroid/util/Range;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x1e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    :cond_23
    return-void
.end method
