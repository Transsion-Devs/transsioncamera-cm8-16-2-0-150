.class public Lcom/transsion/camera/feature/setting/makeup/MuMonomer;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_mu_monomer"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgoSupportForBackCamera:Z

.field private mBackCameraFocalDistance:I

.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mCustomizedFocalLengthSupport:Z

.field private mFeatureValue:Ljava/lang/String;

.field private mIsBlurLevelSupport:Z

.field private mIsModeSupport:Z

.field private mLensWarningStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mPMasterZoomLens:[Ljava/lang/String;

.field private mPlatformConfigType:I

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mWarningType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraDualLensCallback(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/adapter/CameraProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraProxy(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWarningType(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToUI(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->refreshToUI(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuMonomer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsModeSupport:Z

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsBlurLevelSupport:Z

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 376
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getInitFocalLength()I
    .registers 10

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_2b

    .line 267
    :cond_26
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 266
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    const/4 v3, 0x0

    move v4, v2

    .line 271
    :goto_41
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_71

    .line 272
    aget-object v5, v5, v4

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 273
    aget-object v6, v5, v2

    const/4 v7, 0x2

    .line 274
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 275
    new-instance v8, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v8}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 276
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v4

    if-eq v7, v5, :cond_69

    if-eqz v1, :cond_69

    if-nez v3, :cond_69

    move-object v3, v6

    :cond_69
    if-nez v1, :cond_6e

    if-nez v4, :cond_6e

    move-object v3, v6

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 284
    :cond_71
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the default focalLength is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private notifyStateAndSendRequest(I)V
    .registers 5

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateAndSendRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mLensWarningStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v1, "key_lens_warning"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method private queryDefaultValue(IZ)Ljava/lang/String;
    .registers 7

    .line 289
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    .line 291
    const-string v0, "f5.6"

    const-string v1, "f4.0"

    const/4 v2, 0x3

    if-eqz p2, :cond_34

    const/16 p2, 0x18

    .line 292
    const-string v3, "f2.8"

    if-eq p1, p2, :cond_30

    const/16 p2, 0x23

    if-eq p1, p2, :cond_30

    const/16 p2, 0x32

    if-eq p1, p2, :cond_24

    const/16 p2, 0x46

    if-eq p1, p2, :cond_20

    const/16 p2, 0x55

    if-eq p1, p2, :cond_20

    return-object v3

    :cond_20
    if-ne p0, v2, :cond_23

    return-object v0

    :cond_23
    return-object v1

    :cond_24
    if-ne p0, v2, :cond_27

    return-object v0

    :cond_27
    const/4 p1, 0x1

    if-eq p0, p1, :cond_2f

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return-object v1

    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    if-ne p0, v2, :cond_33

    return-object v1

    :cond_33
    return-object v3

    :cond_34
    if-ne p0, v2, :cond_37

    return-object v0

    :cond_37
    return-object v1
.end method

.method private refreshToUI(I)V
    .registers 3

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 387
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_a
    return-void
.end method

.method private saveMonomerFeatureValue(Ljava/lang/String;)V
    .registers 7

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mFeatureValue:Ljava/lang/String;

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mFeatureValue:Ljava/lang/String;

    .line 150
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goingToChangeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mAlgoSupportForBackCamera:Z

    const/4 v1, 0x0

    const-string v2, "+"

    const-string v3, "key_mu_monomer_feature"

    if-eqz p1, :cond_5f

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 154
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 7

    .line 362
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 364
    sget-object v2, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCommand,cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",support:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    const-string v2, "0"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 366
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v0, :cond_48

    if-nez v2, :cond_3e

    if-eqz v1, :cond_48

    .line 368
    :cond_3e
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void

    .line 371
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    const/4 p1, -0x1

    .line 372
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isModeSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsBlurLevelSupport:Z

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_7a

    .line 343
    :cond_31
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 345
    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 346
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSingleBlurLevel(I)V

    .line 348
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_63

    const/4 p0, 0x3

    .line 349
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    goto :goto_71

    :cond_63
    const/4 p0, 0x1

    .line 351
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    goto :goto_71

    .line 354
    :cond_68
    const-string p0, "0"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 356
    :goto_71
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBlurValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_7a
    :goto_7a
    const/4 p0, -0x1

    return p0
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 120
    const-string p0, "key_mu_monomer"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 115
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 160
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

.method protected getWarningType()I
    .registers 1

    .line 209
    iget p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAlgoSupportForBackCamera:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mAlgoSupportForBackCamera:Z

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_lens_warning"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mLensWarningStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformConfigType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPlatformConfigType:I

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalDistance:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mBackCameraFocalDistance:I

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedFocalLengthSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCustomizedFocalLengthSupport:Z

    .line 70
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getPmasterFocalLength()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPMasterZoomLens:[Ljava/lang/String;

    return-void
.end method

.method public initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
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

    .line 83
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 88
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mAlgoSupportForBackCamera:Z

    if-eqz p1, :cond_1f

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 91
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsModeSupport:Z

    return p0
.end method

.method public isSingleBlurForBackCamera()Z
    .registers 1

    .line 191
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mAlgoSupportForBackCamera:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsModeSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 111
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->saveMonomerFeatureValue(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mAlgoSupportForBackCamera:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_46

    .line 137
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    :goto_46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->sendSettingChangeRequest()V

    :cond_49
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 77
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->saveMonomerFeatureValue(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 219
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportSTBlurLevels()Ljava/util/List;

    move-result-object p1

    .line 220
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsBlurLevelSupport:Z

    .line 222
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 226
    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_31

    add-int/lit8 v3, v3, -0x1

    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 230
    :cond_52
    const-string p1, "f0.0"

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result v0

    .line 234
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mMumonomerForceOff:Z

    .line 237
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCustomizedFocalLengthSupport:Z

    if-eqz v4, :cond_72

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getInitFocalLength()I

    move-result v4

    goto :goto_74

    .line 240
    :cond_72
    iget v4, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mBackCameraFocalDistance:I

    :goto_74
    if-eqz v0, :cond_7f

    .line 243
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mIsModeSupport:Z

    if-eqz v0, :cond_97

    .line 244
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_97

    .line 248
    :cond_7f
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mPlatformConfigType:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_97

    if-nez v3, :cond_97

    .line 249
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mCustomizedFocalLengthSupport:Z

    if-nez p1, :cond_90

    if-nez v4, :cond_90

    .line 250
    const-string p1, "f4.0"

    goto :goto_97

    :cond_90
    const/16 p1, 0x1c

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_97
    :goto_97
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method protected updateWarningType(I)V
    .registers 5

    .line 195
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    if-eq v0, p1, :cond_20

    .line 196
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWarningType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->mWarningType:I

    .line 198
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->notifyStateAndSendRequest(I)V

    :cond_20
    return-void
.end method
