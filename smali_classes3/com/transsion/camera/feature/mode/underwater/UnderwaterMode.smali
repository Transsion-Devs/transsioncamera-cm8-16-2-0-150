.class public Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field private mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

.field private mIsModeChanging:Z

.field private mResumeTimestamp:J

.field protected mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;


# direct methods
.method public static synthetic $r8$lambda$nt8e-bKRybws8psbfz591JzsQa8(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->lambda$initUnderModeUI$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDrainageSoundCallback(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;)Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnderwaterMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    return-void
.end method

.method private initUnderModeUI(Landroid/view/LayoutInflater;)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->onCreateUnderwaterUI()Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    .line 150
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$1;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    .line 173
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->initUnderwaterUI()V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getSeparateCaptureNumber()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateCapturedNumber(ZI)V

    .line 191
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initUnderModeUI: init UnderwaterMode UI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initUnderModeUI$0(Z)V
    .registers 5

    .line 174
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchUnderwaterCamera after playDrainageSound success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_60

    .line 176
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-eqz p1, :cond_60

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->exitModeOnMoreTab()V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->switchModeByOverlayGuide(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->switchModeByOverlayGuide(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->setPowerLongPressed(Z)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 302
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 1

    const/4 p0, 0x1

    .line 309
    invoke-static {p0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 259
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const-string p1, "key_tran_plugin"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string p1, "key_setting_smart_denoise"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 266
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 12

    .line 271
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterModeRestriction;->getRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    .line 275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 278
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    invoke-static {v5}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    .line 280
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    const-wide v9, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v7, v9

    .line 281
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_19

    move-object v3, v5

    :cond_48
    if-nez v3, :cond_52

    const/4 v3, 0x0

    .line 288
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 290
    :cond_52
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_55
    sget-object v1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultPictureSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 294
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_7f

    .line 295
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterModeRestriction;->getFrontFlashModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_7f
    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 384
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 385
    const-string p5, "0"

    .line 389
    :cond_12
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOpenCameraId: cameraId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p5
.end method

.method public getSettingGroup()J
    .registers 5

    .line 254
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x1e

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .registers 1

    const/16 p0, 0x1e

    return p0
.end method

.method public getThumbnailSource()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 82
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->initUnderModeUI(Landroid/view/LayoutInflater;)V

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->initUnderwaterSetting()V

    .line 85
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init: init UnderwaterMode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initUnderwaterSetting()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setThumbnailClickable(Z)V

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerFromUnderwater(Z)V

    goto :goto_1d

    .line 94
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 96
    :goto_1d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModeName(Ljava/lang/String;)V

    return-void
.end method

.method public isModeNeedNotifyNewMedia()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isNotSupportWaitPageMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShutterSound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    .line 319
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 5

    .line 220
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 75
    new-instance p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterPhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterPhotoHelper;-><init>()V

    return-object p0
.end method

.method protected onCreateUnderwaterUI()Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;
    .registers 8

    .line 215
    new-instance v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;Z)V

    return-object v0
.end method

.method public onModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 196
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged: onModeChanged oldModeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newModeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 6

    .line 339
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick curPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLongPressedPower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    .line 340
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    return v1

    :cond_36
    const/16 v0, 0x18

    if-eq p2, v0, :cond_50

    const/16 p1, 0x19

    if-eq p2, p1, :cond_40

    const/4 p0, 0x0

    return p0

    .line 348
    :cond_40
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/common/IAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 346
    :cond_50
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .registers 6

    .line 328
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mResumeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Do not take pictures for 5 seconds after the camera is started in monkey scene."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 333
    :cond_1c
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p0

    return p0
.end method

.method public onShutterLongClick(II)Z
    .registers 6

    .line 359
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterLongClick curPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mLongPressedPower = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    .line 360
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    return v0

    :cond_36
    const/16 p1, 0x18

    if-eq p2, p1, :cond_50

    const/16 p1, 0x19

    if-eq p2, p1, :cond_40

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/common/IAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 366
    :cond_50
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera(Ljava/lang/String;)V

    return v0
.end method

.method public onSingleTapUp()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .registers 6

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "pause on UnderwaterMode"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/UnderwaterUtils;->writeUnderwaterSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    if-nez v0, :cond_24

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "key_cam_mode"

    const-string/jumbo v4, "val_not_underwater"

    .line 136
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    :cond_24
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_48

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopDrainageSound after pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Z)Z

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->stopCountDown(Z)Z

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->unRegisterReceiver()V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->hideNotice(Z)V

    :cond_48
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 4

    .line 119
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->setPowerLongPressed(Z)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->registerReceiver(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mResumeTimestamp:J

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "resume on UnderwaterMode"

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/UnderwaterUtils;->writeUnderwaterSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string/jumbo v2, "val_underwater"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->disable()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    if-nez v0, :cond_1c

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "key_cam_mode"

    const-string/jumbo v3, "val_not_underwater"

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1c
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mIsModeChanging:Z

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setThumbnailClickable(Z)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_34

    .line 110
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->unInitUnderwaterUI()V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->unRegisterReceiver()V

    .line 114
    :cond_34
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit: uninit UnderwaterMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCapturedNumber(I)V
    .registers 3

    .line 236
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCapturedNumber(I)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateCapturedNumber(ZI)V

    :cond_b
    return-void
.end method
