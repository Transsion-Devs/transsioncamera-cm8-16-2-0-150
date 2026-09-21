.class public abstract Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mClickFromScale:Z

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsCameraSwitching:Z

.field private mIsInPMasterMode:Z

.field private mIsScaling:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSwitchCamType:I

.field private mWideCameraItemText:[Ljava/lang/String;

.field private mWideCameraZoomList:Ljava/util/List;

.field private mWideZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static bridge synthetic -$$Nest$fputmClickFromScale(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextCameraId(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchBaseFirstCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseFirstCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchBaseSecondCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseSecondCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchWideCamera(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchWideCamera()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 5

    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraZoomList:Ljava/util/List;

    .line 52
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 53
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI$BaseFlipStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    .line 98
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mResources:Landroid/content/res/Resources;

    .line 99
    sget p1, Lcom/transsion/camera/R$bool;->smooth_zoom_need:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    .line 100
    sget p1, Lcom/transsion/camera/R$array;->wide_camera_item_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraItemText:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private getZoomRatioByValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraItemText:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 382
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraItemText:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private hideWideHint()V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1c

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1c
    return-void
.end method

.method private isSatReplacedWide()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isSwitchToMainCamera()Z
    .registers 4

    .line 354
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSwitchToMainCamera], mNextCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentCameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsScaling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    if-nez p0, :cond_46

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method private isSwitchToWideCamera()Z
    .registers 4

    .line 348
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSwitchToWideCamera], mNextCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentCameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsScaling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    if-nez p0, :cond_46

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method private showWideHint()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_23

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->open_wide_camera_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    return-void
.end method

.method private switchBaseFirstCamera()V
    .registers 7

    .line 249
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    const-string v1, "off"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v3, "1x_dual_exchange"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_94

    .line 252
    :cond_17
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_2c

    goto :goto_56

    .line 268
    :cond_2c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_4a

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_94

    .line 271
    :cond_4a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_94

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_94

    .line 254
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_66

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 258
    :cond_66
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v0, :cond_8d

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEquivalentZoomValue(I)I

    move-result v0

    .line 261
    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v0, v4, :cond_84

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    :cond_84
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 266
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 276
    :cond_94
    :goto_94
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-nez v0, :cond_a7

    .line 277
    :cond_a4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    .line 279
    :cond_a7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_b8

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v4, "value_flip_camera_first_item_selected"

    .line 281
    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_bf

    .line 284
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 286
    :cond_bf
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->hideWideHint()V

    .line 287
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    return-void
.end method

.method private switchBaseSecondCamera()V
    .registers 5

    .line 291
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const-string v1, "120"

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_5c

    .line 293
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v2, "second_exchange"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_wide_camera_selected"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "wide_camera_selected_value"

    .line 295
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 297
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_37

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_5c

    .line 300
    :cond_37
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v0, :cond_5c

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEquivalentZoomValue(I)I

    move-result v0

    .line 303
    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 304
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I

    .line 306
    :cond_53
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 310
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_67

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v2, :cond_67

    .line 311
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 313
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_70

    .line 314
    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 316
    :cond_70
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_81

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_flip_camera_second_item_selected"

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_81
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    return-void
.end method

.method private switchWideCamera()V
    .registers 5

    .line 208
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    move v0, v1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v2, :cond_31

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_48

    .line 212
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_31
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const-string v2, "on"

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_48

    .line 218
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_48
    return-void

    .line 222
    :cond_49
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->isSatReplacedWide()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v3, "replace"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_66

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    .line 228
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_9c

    .line 229
    :cond_6e
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    if-eqz v0, :cond_76

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v3, :cond_7c

    :cond_76
    if-nez v0, :cond_9c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_9c

    :cond_7c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_9c

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_95

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    .line 235
    :cond_95
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 237
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_a3

    .line 238
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 240
    :cond_a3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    if-nez v0, :cond_b4

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "value_flip_camera_wide_item_selected"

    .line 242
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_b4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->showWideHint()V

    .line 245
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mClickFromScale:Z

    return-void
.end method

.method private updateNextCamera()V
    .registers 3

    .line 501
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1a

    return-void

    .line 508
    :cond_f
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void

    .line 505
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method private updateZoomValueWhenRecording(Ljava/lang/String;)V
    .registers 5

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 517
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const-string v1, "100"

    if-eqz v0, :cond_1d

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le p1, v0, :cond_1d

    .line 518
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_19

    .line 519
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 521
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->updateTextEntryView()V

    return-void

    .line 522
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-eqz v0, :cond_42

    .line 523
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "120"

    if-le p1, v0, :cond_33

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt p1, v0, :cond_33

    .line 524
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseFirstCamera()V

    return-void

    .line 525
    :cond_33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_3f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_42

    .line 526
    :cond_3f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseSecondCamera()V

    :cond_42
    return-void
.end method


# virtual methods
.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .registers 1

    .line 126
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method public getExtraKey()Ljava/lang/String;
    .registers 1

    .line 110
    const-string p0, "wide_camera"

    return-object p0
.end method

.method protected getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 389
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getZoomValue] zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    rem-int/lit8 v0, p0, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    add-int/lit8 p0, p0, -0x5

    .line 394
    :cond_21
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_3c

    .line 395
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%dx"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 397
    :cond_3c
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit8 v0, p0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d.%dx"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected init()V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 402
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/16 v0, 0x10

    if-eq p1, v0, :cond_12

    return-void

    .line 418
    :cond_12
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    .line 419
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void

    .line 410
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->hideWideHint()V

    return-void

    .line 413
    :cond_1b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsCameraSwitching:Z

    .line 414
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    .line 415
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void

    .line 405
    :cond_22
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsScaling:Z

    .line 406
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsCameraSwitching:Z

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->hideWideHint()V

    return-void
.end method

.method protected onClickEvent()Z
    .registers 7

    .line 131
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClickEvent] mCameraType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIsSATCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentCameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    invoke-static {v1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 133
    const-string p0, "ignore onClickEvent"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 136
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_b1

    .line 138
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    if-eq v0, v3, :cond_8c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_82

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8c

    goto/16 :goto_ca

    .line 140
    :cond_57
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    if-eqz v0, :cond_7e

    .line 141
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_75

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7e

    .line 144
    :cond_75
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_7e

    .line 145
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 149
    :cond_7e
    :goto_7e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->showWideHint()V

    goto :goto_ca

    .line 161
    :cond_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_ca

    .line 162
    const-string v1, "120"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_ca

    .line 153
    :cond_8c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_a6

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ad

    .line 156
    :cond_a6
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 158
    :goto_ad
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->hideWideHint()V

    goto :goto_ca

    .line 169
    :cond_b1
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_c7

    .line 170
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    packed-switch v0, :pswitch_data_d2

    goto :goto_ca

    .line 172
    :pswitch_bb
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchWideCamera()V

    goto :goto_ca

    .line 182
    :pswitch_bf
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseSecondCamera()V

    goto :goto_ca

    .line 178
    :pswitch_c3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->switchBaseFirstCamera()V

    goto :goto_ca

    .line 188
    :cond_c7
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->updateZoomValueWhenRecording(Ljava/lang/String;)V

    .line 191
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->updateTextEntryView()V

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    return v3

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_c3
        :pswitch_c3
        :pswitch_bf
        :pswitch_c3
    .end packed-switch
.end method

.method protected onTouchForFlip(Landroid/view/MotionEvent;)V
    .registers 11

    if-eqz p1, :cond_111

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_111

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_111

    .line 431
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_30

    if-eq p1, v2, :cond_2b

    if-eq p1, v3, :cond_27

    goto/16 :goto_108

    .line 478
    :cond_27
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto/16 :goto_108

    .line 481
    :cond_2b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->onClickEvent()Z

    goto/16 :goto_108

    .line 434
    :cond_30
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    const-string v4, "120"

    const/4 v5, 0x2

    const/4 v6, 0x7

    const-string v7, "100"

    if-eqz p1, :cond_74

    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v8, -0x1

    sparse-switch p1, :sswitch_data_112

    goto :goto_62

    :sswitch_46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_62

    :cond_4d
    move v8, v5

    goto :goto_62

    :sswitch_4f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_62

    :cond_56
    move v8, v2

    goto :goto_62

    :sswitch_58
    const-string p1, "60"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_62

    :cond_61
    move v8, v1

    :goto_62
    packed-switch v8, :pswitch_data_120

    .line 446
    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto/16 :goto_d4

    .line 443
    :pswitch_69
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto/16 :goto_d4

    .line 440
    :pswitch_6d
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto/16 :goto_d4

    .line 437
    :pswitch_71
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 450
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz p1, :cond_81

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 451
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 452
    :cond_81
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-eqz p1, :cond_8e

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 453
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 454
    :cond_8e
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-eqz p1, :cond_a3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 455
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mPMasterMode:Z

    if-eqz p1, :cond_a0

    const/4 p1, 0x4

    .line 456
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 458
    :cond_a0
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 460
    :cond_a3
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-eqz p1, :cond_bb

    .line 461
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    const/4 p1, 0x6

    .line 462
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 463
    :cond_b1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d4

    const/4 p1, 0x5

    .line 464
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 467
    :cond_bb
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 468
    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    goto :goto_d4

    .line 469
    :cond_ce
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz p1, :cond_d4

    .line 470
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    .line 474
    :cond_d4
    :goto_d4
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onTouchForFlip] zoomValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mSwitchType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsWideCamera = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsBackCamera = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    :goto_108
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoStartRecording:Z

    if-eqz p1, :cond_10e

    .line 487
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    .line 489
    :cond_10e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->updateNextCamera()V

    :cond_111
    :goto_111
    return-void

    :sswitch_data_112
    .sparse-switch
        0x6ba -> :sswitch_58
        0xbdf1 -> :sswitch_4f
        0xbe2f -> :sswitch_46
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6d
        :pswitch_69
    .end packed-switch
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 198
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$array;->sat_wide_camera_zoom_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 199
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$array;->wide_camera_zoom_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 204
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mWideZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 331
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    return-void
.end method

.method public updateCameraUIByModeForFlip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 494
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateCameraUIByModeForFlip(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string p1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsInPMasterMode:Z

    const/4 p1, 0x0

    .line 496
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mSwitchCamType:I

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->updateTextEntryView()V

    return-void
.end method

.method protected updateTextEntryView()V
    .registers 6

    .line 336
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateTextEntryView()V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v2, :cond_1b

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->isSwitchToWideCamera()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v2, :cond_29

    :cond_1b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->isSwitchToMainCamera()Z

    move-result v2

    if-nez v2, :cond_29

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->mIsInPMasterMode:Z

    if-nez v2, :cond_29

    .line 340
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->getZoomRatioByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_29
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/BaseFlipZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateTextEntryView] zoomValueInStore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " zoomText : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
