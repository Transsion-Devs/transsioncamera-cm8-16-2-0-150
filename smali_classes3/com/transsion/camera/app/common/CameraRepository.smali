.class public Lcom/transsion/camera/app/common/CameraRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/transsion/camera/app/common/CameraRepository;


# instance fields
.field private final mAllCamera:Ljava/util/Map;

.field private mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mCameraCount:I

.field private mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;


# direct methods
.method private constructor <init>()V
    .registers 13

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 26
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 27
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 28
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 34
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 36
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 40
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 41
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    .line 124
    new-instance v1, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v2, "0"

    const-string v3, "BACK_MAIN"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 125
    new-instance v2, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v3, "1"

    const-string v4, "FRONT_MAIN"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 126
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    .line 127
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 128
    new-instance v4, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BACK_VIDEO"

    invoke-direct {v4, v5, v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 130
    :cond_62
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 131
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f19999a    # 0.6f

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v4

    .line 132
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 133
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "BACK_%s_WIDE"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 135
    :cond_8e
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMacroCameraId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a1

    .line 136
    new-instance v4, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMacroCameraId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BACK_MACRO"

    invoke-direct {v4, v5, v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 138
    :cond_a1
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v4

    .line 139
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BACK_%s_LONG_FOCUS"

    if-eqz v6, :cond_ce

    .line 140
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 141
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v4, v9}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 142
    iput-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 144
    :cond_ce
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_fd

    .line 145
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-interface {v3, v6, v8}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v6

    .line 146
    new-instance v8, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 147
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v8, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 148
    iget-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-nez v6, :cond_fd

    .line 149
    iput-object v8, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 152
    :cond_fd
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_110

    .line 153
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BACK_SAT"

    invoke-direct {v6, v7, v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 155
    :cond_110
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_123

    .line 156
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BACK_BLUR"

    invoke-direct {v6, v7, v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 158
    :cond_123
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14c

    .line 159
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v5

    .line 160
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 161
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "BACK_%s_BLUR"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v6, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 163
    :cond_14c
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15f

    .line 164
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BACK_BLACK_WHITE_PORTRAIT"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 166
    :cond_15f
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_172

    .line 167
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BACK_FAKE_DUAL"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 169
    :cond_172
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_185

    .line 170
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FRONT_WIDE"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 172
    :cond_185
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontFakeDualCameraId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_198

    .line 173
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontFakeDualCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FRONT_FAKE_DUAL"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 175
    :cond_198
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMicroPanTiltCameraLogicId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1ab

    .line 176
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMicroPanTiltCameraLogicId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MICRO_PAN_TILT"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 178
    :cond_1ab
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicBackId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1be

    .line 179
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicBackId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BACK_HIGH_DEFINITION"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 181
    :cond_1be
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicFrontId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d1

    .line 182
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicFrontId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FRONT_HIGH_DEFINITION"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 184
    :cond_1d1
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e4

    .line 185
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FRONT_FOLD"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 187
    :cond_1e4
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspFrontFakeId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f7

    .line 188
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspFrontFakeId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PRE_ISP_FAKE_FRONT"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 190
    :cond_1f7
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_218

    .line 191
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 192
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PRE_ISP_FAKE_TELE"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 194
    :cond_218
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspWideFakeId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22b

    .line 195
    new-instance v4, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPreIspWideFakeId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PRE_ISP_FAKE_WIDE"

    invoke-direct {v4, v5, v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 198
    :cond_22b
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getNumberOfCameras()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    .line 199
    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23e

    .line 200
    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_23e
    invoke-static {v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24b

    .line 203
    invoke-static {v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_24b
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_260

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_260

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_260
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_275

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_275

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_275
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_28a

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28a

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_28a
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_29f

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29f

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_29f
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_2b4

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b4

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_2b4
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_2c9

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c9

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2c9
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_2de

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2de

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_2de
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_2f3

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f3

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2f3
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_308

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_308

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_308
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_31d

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31d

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_31d
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_332

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_332

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_332
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_347

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_347

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_347
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_35c

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35c

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_35c
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_371

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_371

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_371
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_386

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_386

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_386
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_39b

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39b

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeWideId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_39b
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v1, :cond_3b0

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b0

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b0
    return-void
.end method

.method private equivalentZoomInLongFocusCamera(I)Z
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 562
    :cond_6
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequivalentZoomInRange(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 563
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result p0

    if-ne p1, p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/CameraRepository;
    .registers 1

    .line 260
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    if-nez v0, :cond_b

    .line 261
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/CameraRepository;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    .line 263
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    return-object v0
.end method


# virtual methods
.method public aeLockSupported(Ljava/lang/String;)Z
    .registers 2

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 524
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$maeLockSupported(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public continuousFocusSupport(Ljava/lang/String;Z)Z
    .registers 3

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 532
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mcontinuousFocusSupport(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Z)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public get2XBlurCameraZoom(I)I
    .registers 2

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getBack2XBlurCamera()Ljava/lang/String;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBack5XLongFocusCamera()Ljava/lang/String;
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBack5XLongFocusCameraMiniZoom()I
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentMinZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getBackBlackWhitePortraitCamera()Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackBlurCamera()Ljava/lang/String;
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackCameraWithZoom(I)Ljava/lang/String;
    .registers 3

    .line 546
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->equivalentZoomInLongFocusCamera(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 548
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequivalentZoomInRange(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 549
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v0, :cond_27

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequivalentZoomInRange(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 551
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 553
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackDefaultCamera()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackDefaultCamera(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_12

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackFakeDualCamera()Ljava/lang/String;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackLongFocusCamera()Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackLongFocusCameraDeviceZoom(I)I
    .registers 2

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetDeviceZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getBackLongFocusCameraMiniZoom()I
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentMinZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getBackLongFocusCameraZoom(I)I
    .registers 2

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getBackLongFocusRatio()F
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmZoomRatio(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)F

    move-result p0

    return p0

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getBackMacroCamera()Ljava/lang/String;
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackMainCameraMaxZoom()I
    .registers 1

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result p0

    return p0
.end method

.method public getBackMainCameraMiniZoom()I
    .registers 1

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentMinZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackSATCamera()Ljava/lang/String;
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackVideoCamera()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackWideCamera()Ljava/lang/String;
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraCount()I
    .registers 1

    .line 267
    iget p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    return p0
.end method

.method public getCameraName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 582
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraName(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method public getDeviceZoom(Ljava/lang/String;I)I
    .registers 3

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 500
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetDeviceZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_f
    return p2
.end method

.method public getDeviceZoomRatio(Ljava/lang/String;)F
    .registers 2

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 516
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmZoomRatio(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)F

    move-result p0

    return p0

    :cond_f
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getEquivalentZoom(Ljava/lang/String;I)I
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_f

    .line 492
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mgetEquivalentZoom(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_f
    return p2
.end method

.method public getFoldFrontCamera()Ljava/lang/String;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    .line 304
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrontDefaultCamera()Ljava/lang/String;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontFakeDualCamera()Ljava/lang/String;
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrontWideCamera()Ljava/lang/String;
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDefinitionBackCamera()Ljava/lang/String;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDefinitionFrontCamera()Ljava/lang/String;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLongFocusIdOrFakeId(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_f

    .line 485
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspSupport:Z

    if-eqz p1, :cond_f

    .line 486
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBackCamera()Ljava/lang/String;
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainFrontCamera()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreIspTeleFakeId()Ljava/lang/String;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWideCamera(Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v0

    .line 321
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_16

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public is2XBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isBackLongFocusCamera(Ljava/lang/String;)Z
    .registers 2

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isBackMainCamera(Ljava/lang/String;)Z
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isBackSATCamera(Ljava/lang/String;)Z
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isBackWideCamera(Ljava/lang/String;)Z
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isFrontFolderCamera(Ljava/lang/String;)Z
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFoldFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_9

    .line 403
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isFrontMainCamera(Ljava/lang/String;)Z
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFrontWideCamera(Ljava/lang/String;)Z
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isHighDefiniteCamera(Ljava/lang/String;)Z
    .registers 2

    .line 419
    const-string p0, "37"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isMicroPanTiltCamera(Ljava/lang/String;)Z
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isPreIspFakeTeleCamera(Ljava/lang/String;)Z
    .registers 2

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mPreIspFakeTeleId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$mequals(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public nonDefaultCameraInASDMode(Ljava/lang/String;)Z
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 572
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 576
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_2e

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v1

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method
