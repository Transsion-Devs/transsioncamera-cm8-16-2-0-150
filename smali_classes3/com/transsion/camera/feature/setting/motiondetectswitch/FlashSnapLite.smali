.class public Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;
.super Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final BV_DEBUG_DISABLE:I

.field private final HIDE_ICON_BV_THRESHOLD:I

.field private final NO_NEED_CHECK_BV_FRAME_NUM:I

.field private SHOW_ICON_BV_THRESHOLD:I

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mContext:Landroid/content/Context;

.field private mNeedShowIcon:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private prevNeedShowIcon:Z


# direct methods
.method public static synthetic $r8$lambda$hYMUDSog-Y4_hwKPKuCsJPasRLg(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/adapter/CameraProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultCallBack(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraProxy(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashSnapLite"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;-><init>()V

    const/16 v0, 0x28

    .line 46
    iput v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->SHOW_ICON_BV_THRESHOLD:I

    const/4 v0, 0x5

    rsub-int/lit8 v1, v0, 0x28

    .line 47
    iput v1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->HIDE_ICON_BV_THRESHOLD:I

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    const/16 v1, -0x64

    .line 51
    iput v1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->BV_DEBUG_DISABLE:I

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->NO_NEED_CHECK_BV_FRAME_NUM:I

    .line 220
    new-instance v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;-><init>(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 247
    new-instance v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 2

    .line 337
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteRestriction;->getRelationWhenVisibleChange(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method private getRelationWhenValueChange(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 8

    .line 321
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PHOTO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_flash_facade"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    const-string v1, "auto"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v4, "key_hdr"

    invoke-virtual {p2, v4, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 324
    sget-object p2, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRelationWhenValueChange: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hdr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteRestriction;->getModeRelationInAI(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 326
    const-string p2, "off, on, auto, torch"

    if-eqz p1, :cond_80

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 327
    :cond_7c
    invoke-virtual {p0, v2, v3, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    goto :goto_85

    :cond_80
    if-nez p1, :cond_85

    .line 330
    invoke-virtual {p0, v2, v0, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 333
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method private isFacingBack()Z
    .registers 2

    .line 316
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 317
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private isFlashFacadeOnOrTorch()Z
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    const-string/jumbo v0, "torch"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method private isImageStyleOn()Z
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_image_style"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isSuperDefinitionOn()Z
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 12

    .line 248
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p2, :cond_130

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long p2, v0, v2

    if-gtz p2, :cond_10

    goto/16 :goto_130

    .line 251
    :cond_10
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_camera_zoom"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_best_moment_detect"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_130

    if-nez v1, :cond_26

    goto/16 :goto_130

    .line 256
    :cond_26
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 257
    sget-object p3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 258
    const-string p3, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_8b

    .line 261
    aget v4, p1, v3

    iget v5, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->SHOW_ICON_BV_THRESHOLD:I

    if-lt v4, v5, :cond_42

    move v4, v2

    goto :goto_43

    :cond_42
    move v4, v3

    .line 262
    :goto_43
    sget-object v5, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mResultCallBack, mNeedShowIcon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", prevNeedShowIcon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bvCanShowIcon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", zoom1X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", switchOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v4, :cond_8c

    .line 264
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    if-eqz v5, :cond_8c

    aget p1, p1, v3

    iget v5, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->HIDE_ICON_BV_THRESHOLD:I

    if-lt p1, v5, :cond_8c

    move v4, v2

    goto :goto_8c

    :cond_8b
    move v4, v3

    :cond_8c
    :goto_8c
    if-eqz v4, :cond_92

    if-eqz p2, :cond_92

    move p1, v2

    goto :goto_93

    :cond_92
    move p1, v3

    .line 268
    :goto_93
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-nez p1, :cond_c3

    .line 269
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    if-eqz v5, :cond_c3

    if-eqz v1, :cond_c3

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_ac

    .line 271
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_ac
    if-eqz v4, :cond_b9

    if-nez p2, :cond_b9

    .line 274
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 276
    :cond_b9
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_e3

    :cond_c3
    if-eqz p1, :cond_e3

    .line 277
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    if-nez p1, :cond_e3

    if-eqz v1, :cond_e3

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_da

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 281
    :cond_da
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 283
    :cond_e3
    :goto_e3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->prevNeedShowIcon:Z

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    .line 285
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_bm_detect_icon_visible"

    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 286
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    const-string v1, "0"

    if-eqz v0, :cond_110

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    if-nez p2, :cond_110

    .line 287
    :cond_106
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, p3, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_123

    .line 288
    :cond_110
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-nez v0, :cond_123

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_123

    .line 289
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, v1, p3, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_123
    :goto_123
    if-eqz p1, :cond_130

    .line 292
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_130
    :goto_130
    return-void
.end method

.method private resetIfNeed()V
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_45

    .line 299
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app_info/BaseApplication;

    iget-boolean v0, v0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedResetFlashSnapLiteStatus:Z

    if-eqz v0, :cond_45

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 301
    sget-object p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Default value is null,do not reset value."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_1e
    sget-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetFlashSnapLiteIfNeed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_45

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 309
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_45
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->isFacingBack()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 243
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 10

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_setting_smart_denoise"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v3

    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_24

    move v3, v5

    goto :goto_25

    :cond_24
    move v3, v1

    .line 113
    :goto_25
    sget-object v4, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configParameters, in AICam, isSwitchValueOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", denoiseValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isZoom1X "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    if-eqz v0, :cond_75

    .line 116
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-eqz v4, :cond_75

    if-eqz v3, :cond_65

    .line 117
    const-string v3, "off"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 118
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    .line 119
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHALBMLowLightMode(I)V

    goto :goto_78

    .line 121
    :cond_65
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isAutoCapture()Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x2

    goto :goto_71

    :cond_70
    move v2, v5

    :goto_71
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setHALBMLowLightMode(I)V

    goto :goto_78

    .line 125
    :cond_75
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHALBMLowLightMode(I)V

    :goto_78
    if-eqz v0, :cond_8d

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mNeedShowIcon:Z

    if-eqz v0, :cond_8d

    .line 128
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    goto :goto_b0

    .line 131
    :cond_8d
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 132
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    goto :goto_b0

    .line 135
    :cond_94
    sget-object p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "configParameters, mMotionDetectSwitch value 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentDetectMode(I)V

    .line 137
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMLowLightMode(I)V

    .line 138
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setBMCustomZSLBufSize(I)V

    .line 139
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setDeBandingMode(I)V

    .line 140
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureISPTunning(I)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashSnapAutoCaptureMode(I)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHALBMLowLightMode(I)V

    :goto_b0
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

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

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

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMotionCaptureBVThreshold()I

    move-result p1

    const/16 p2, -0x64

    if-eq p1, p2, :cond_13

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMotionCaptureBVThreshold()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->SHOW_ICON_BV_THRESHOLD:I

    :cond_13
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->onModeClosed(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_1c

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_1e

    .line 159
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw p1
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 11

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "value_on_manual_off"

    const-string v3, "key_motion_capture_closed_reason"

    const-string v4, "closed_reason_user"

    if-nez v0, :cond_79

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onValueChanged], value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "value_off_manual_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "1"

    if-eqz v0, :cond_35

    move-object p1, v5

    goto :goto_46

    .line 75
    :cond_35
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    const-string p1, "0"

    .line 79
    :cond_46
    :goto_46
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v6, p1, v7, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_79

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0, v0, v5}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->getRelationWhenValueChange(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 87
    :cond_79
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, v4, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_98
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
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

    .line 163
    sget-object v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlashSnapLiteOverrideValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_42

    .line 165
    const-string p0, "not in AICam, return!!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_42
    const-string p3, "on"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "0"

    const-string v1, "1"

    if-eqz p2, :cond_50

    move-object p2, v1

    goto :goto_51

    :cond_50
    move-object p2, p3

    .line 169
    :goto_51
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto/16 :goto_127

    .line 172
    :cond_5d
    const-string v2, "key_super_definition"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, "key_flash_facade"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, "key_image_style"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 173
    :cond_75
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "key_motion_capture_closed_reason"

    if-eqz v2, :cond_87

    .line 174
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    :cond_87
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "closed_reason_user"

    invoke-virtual {v2, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->isSuperDefinitionOn()Z

    move-result v3

    if-nez v3, :cond_127

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->isImageStyleOn()Z

    move-result v3

    if-nez v3, :cond_127

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->isFlashFacadeOnOrTorch()Z

    move-result v3

    if-eqz v3, :cond_c0

    goto :goto_127

    .line 182
    :cond_c0
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "return by : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_db
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, p2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_107

    .line 192
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    const/16 v3, 0x1e

    invoke-virtual {p3, v3, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 193
    invoke-interface {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_10b

    :cond_107
    const/4 p1, 0x3

    .line 195
    invoke-interface {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 198
    :cond_10b
    :goto_10b
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->getRelationWhenEnableStatueChange(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p1, :cond_127

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_127
    :goto_127
    return-void
.end method

.method public resume()V
    .registers 1

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->resetIfNeed()V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->isSupport()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_16

    .line 99
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 102
    :cond_16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
