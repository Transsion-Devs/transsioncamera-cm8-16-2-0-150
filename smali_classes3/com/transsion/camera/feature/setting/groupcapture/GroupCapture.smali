.class public Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final DEBUG_SCENE:Ljava/lang/Boolean;

.field private static final ENABLE_ZSL:Ljava/lang/Boolean;

.field private static final EXTRA_CAPTURE_COUNT:I = 0x3

.field private static final KEY_ICON_SELECT_STATE:Ljava/lang/String; = "key_icon_select_state"

.field private static final KEY_PREVIEW_STATE:Ljava/lang/String; = "key_preview_state"

.field private static final KEY_SCENE_STATE:Ljava/lang/String; = "key_scene_state"

.field private static final MAX_GROUP_CAPTURE_COUNT:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_LIMITED:Ljava/lang/Boolean;


# instance fields
.field private isAsdMode:Z

.field private mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFaceChecker:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

.field private mForceApplyValue:Ljava/lang/String;

.field private mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mIsAutoMacroActive:Z

.field private volatile mIsCapturing:Z

.field private mIsFacingBack:Z

.field private mIsFrameResultCallbackEnabled:Z

.field private volatile mIsGroupPhotoScene:Z

.field private mIsIconSelected:Z

.field private mIsModeSupported:Z

.field private mIsTemporaryDisabled:Z

.field private mPendingUpdateIconSelectState:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSatStreamId:Ljava/lang/String;

.field private mStatusListener:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFaceChecker(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFaceChecker:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFrameResultCallbackEnabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFrameResultCallbackEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoMacroActive(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsAutoMacroActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFrameResultCallbackEnabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFrameResultCallbackEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTemporaryDisabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSatStreamId(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mSatStreamId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckGroupScene(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->checkGroupScene(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->notifyPreviewState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCaptureStateChanged(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->onCaptureStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    const-string v0, "debug.camera.group.capture"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->DEBUG:Ljava/lang/Boolean;

    .line 48
    const-string v0, "debug.camera.group.scene"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2a

    move v2, v3

    :cond_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->DEBUG_SCENE:Ljava/lang/Boolean;

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureEnableZSL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->ENABLE_ZSL:Ljava/lang/Boolean;

    .line 50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureZoomLimited()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->ZOOM_LIMITED:Ljava/lang/Boolean;

    .line 51
    const-string v0, "max_group_capture_count"

    .line 52
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getMaxGroupCaptureCount(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->MAX_GROUP_CAPTURE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isAsdMode:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsIconSelected:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFrameResultCallbackEnabled:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    .line 297
    new-instance v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 404
    new-instance v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private checkGroupScene(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    if-nez p1, :cond_a

    .line 426
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "checkGroupScene, null result"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFacingBack:Z

    if-eqz v0, :cond_13

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFaceFeatureAdditionalResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    .line 430
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFaceChecker:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-virtual {v0, p1, p3, p2}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->updateFaceResult(Landroid/hardware/camera2/CaptureResult;[ILandroid/util/Size;)V

    .line 432
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsCapturing:Z

    if-eqz p1, :cond_1e

    goto :goto_42

    .line 435
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isGroupPhotoScene()Z

    move-result p1

    .line 436
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 438
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mPendingUpdateIconSelectState:Z

    if-eqz p3, :cond_36

    .line 439
    const-string p3, "key_icon_select_state"

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsIconSelected:Z

    invoke-interface {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    const/4 p3, 0x0

    .line 440
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mPendingUpdateIconSelectState:Z

    .line 442
    :cond_36
    const-string p3, "key_scene_state"

    invoke-interface {p2, p3, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 444
    :cond_3b
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    if-eq p1, p2, :cond_42

    .line 445
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->updateGroupPhotoScene(Z)V

    :cond_42
    :goto_42
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .registers 2

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 252
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private handleRestriction(Ljava/lang/String;)V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCaptureRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method private isGroupPhotoScene()Z
    .registers 9

    .line 158
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->DEBUG_SCENE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 162
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    .line 163
    const-string v0, "isGroupPhotoScene, return for value off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 167
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    if-eqz v0, :cond_27

    .line 168
    const-string v0, "isGroupPhotoScene, return for TemporaryDisabled"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 172
    :cond_27
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->ZOOM_LIMITED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 174
    :try_start_2f
    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 175
    sget v4, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3b} :catch_3e

    if-lt v0, v4, :cond_45

    return v3

    .line 179
    :catch_3e
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "Warning: getZoomValue NumberFormatException !"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mForceApplyValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 184
    const-string v0, "isGroupPhotoScene, return for ForceApplyValue off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 188
    :cond_53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_147

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto/16 :goto_147

    .line 195
    :cond_6d
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_132

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    goto/16 :goto_132

    .line 201
    :cond_87
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    .line 202
    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v4

    .line 203
    const-string v5, "on"

    if-eqz v4, :cond_af

    .line 204
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v4

    if-eqz v4, :cond_af

    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 205
    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 206
    const-string v0, "isGroupPhotoScene, return for superDefinition on"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 210
    :cond_af
    const-string v2, "key_portrait_flare"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v4

    if-eqz v4, :cond_cf

    .line 212
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 213
    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 214
    const-string v0, "isGroupPhotoScene, return for portraitFlare on"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 219
    :cond_cf
    const-string v2, "key_auto_macro_switch"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v2

    if-eqz v2, :cond_103

    .line 220
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 222
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_auto_macro_switch_toggle"

    .line 223
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-virtual {v4, v6, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_103

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsAutoMacroActive:Z

    if-eqz v2, :cond_103

    .line 226
    const-string v0, "isGroupPhotoScene, return for autoMacro active"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 232
    :cond_103
    const-string v2, "key_mu_monomer"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 234
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v2

    if-eqz v2, :cond_123

    const-string v2, "f0.0"

    .line 235
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    .line 236
    const-string v0, "isGroupPhotoScene, return for muMonomer on"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 240
    :cond_123
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFaceChecker:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->hasSteadyValidFaces()Z

    move-result v0

    if-nez v0, :cond_131

    .line 242
    const-string v0, "isGroupPhotoScene, return for having not valid faces"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    :cond_131
    return v1

    .line 197
    :cond_132
    :goto_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGroupPhotoScene, return for sat cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3

    .line 192
    :cond_147
    :goto_147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGroupPhotoScene, return for cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->debugLog(Ljava/lang/String;)V

    return v3
.end method

.method private notifyPreviewState(I)V
    .registers 3

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 319
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    const-string v0, "key_preview_state"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_f
    return-void
.end method

.method private onCaptureStateChanged(Ljava/lang/String;)V
    .registers 6

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_c8

    goto :goto_2e

    :sswitch_e
    const-string v0, "shot2shot_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v3, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "capture_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v3, v1

    goto :goto_2e

    :sswitch_24
    const-string v0, "capture_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    packed-switch v3, :pswitch_data_d6

    goto :goto_72

    .line 106
    :pswitch_32
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsCapturing:Z

    .line 107
    sget-object p1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStateChanged, CAPTURE_SHOT2SHOT_END, mCurrentGroupCaptureCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    sget v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->MAX_GROUP_CAPTURE_COUNT:I

    if-lt p1, v0, :cond_72

    .line 110
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    .line 111
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->updateGroupPhotoScene(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    const-string p1, "key_scene_state"

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_72
    :goto_72
    return-void

    .line 118
    :pswitch_73
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsCapturing:Z

    .line 119
    sget-object p1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStateChanged, CAPTURE_END, mIsTemporaryDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    if-eqz p1, :cond_93

    .line 122
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsTemporaryDisabled:Z

    .line 124
    :cond_93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 96
    :pswitch_99
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsCapturing:Z

    .line 97
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    if-eqz p1, :cond_a5

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_aa

    .line 100
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 102
    :goto_aa
    sget-object p1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStateChanged, CAPTURE_START, mCurrentGroupCaptureCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x76a61dd7 -> :sswitch_24
        0x9bb6c62 -> :sswitch_19
        0x667e128e -> :sswitch_e
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_99
        :pswitch_73
        :pswitch_32
    .end packed-switch
.end method

.method private updateGroupPhotoScene(Z)V
    .registers 5

    .line 257
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGroupPhotoScene, isGroupPhotoScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    .line 259
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    if-eqz p1, :cond_20

    const-string p1, "on"

    goto :goto_22

    :cond_20
    const-string p1, "off"

    .line 260
    :goto_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_group_capture_scene_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->handleRestriction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 397
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFrameResultCallbackEnabled:Z

    if-eqz v0, :cond_a

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 400
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isModeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 380
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isGroupCaptureReady()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x3

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 381
    :goto_1c
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setExtraCaptureCount(I)V

    .line 382
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setGroupCaptureEnable(I)V

    .line 383
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->ENABLE_ZSL:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setExtraCaptureEnableZSL(Z)V

    goto :goto_35

    .line 385
    :cond_2c
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setExtraCaptureCount(I)V

    .line 386
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setGroupCaptureEnable(I)V

    .line 387
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setExtraCaptureEnableZSL(Z)V

    .line 389
    :goto_35
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getExtraCaptureCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isGroupCaptureEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getGroupCaptureEnable()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 325
    const-string p0, "key_group_capture"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsModeSupported:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0

    :cond_7
    const/4 p0, 0x0

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

    .line 289
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 358
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

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 74
    sget-object p1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init MAX_GROUP_CAPTURE_COUNT: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->MAX_GROUP_CAPTURE_COUNT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", ENABLE_ZSL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->ENABLE_ZSL:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mStatusListener:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "capture_state"

    invoke-virtual {p2, p3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 77
    new-instance p1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mFaceChecker:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

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

    .line 279
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 282
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isGroupCaptureReady()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsIconSelected:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method isModeSupported()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsModeSupported:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 144
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsModeSupported:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->updateGroupPhotoScene(Z)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_2c

    .line 151
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 138
    const-string p2, "key_group_capture"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsModeSupported:Z

    .line 139
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isAsdMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 335
    sget-object v0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 337
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_31
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 6

    .line 344
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_17

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const-string v2, "key_icon_select_state"

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_2a

    .line 351
    :cond_28
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mPendingUpdateIconSelectState:Z

    .line 353
    :goto_2a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsIconSelected:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 367
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFacingBack:Z

    .line 369
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    const-string v1, "off"

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsFacingBack:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isAsdMode:Z

    if-eqz v0, :cond_28

    goto :goto_30

    .line 371
    :cond_28
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_30
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public turnOnSwitch(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsIconSelected:Z

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->isGroupCaptureReady()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "on"

    goto :goto_d

    :cond_b
    const-string p1, "off"

    .line 274
    :goto_d
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->handleRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 456
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "capture_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mStatusListener:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->updateGroupPhotoScene(Z)V

    .line 459
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mIsGroupPhotoScene:Z

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->mCurrentGroupCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
