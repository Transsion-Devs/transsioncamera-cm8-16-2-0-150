.class public Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFrontSettingUIList:Ljava/util/List;

.field private mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mIsWideAndMainCam:Z

.field private mSettingUIList:Ljava/util/List;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;


# direct methods
.method public static synthetic $r8$lambda$PDk9_gkQ480Wlo4UTOJazVmy2xA(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWideAndMainCam(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mIsWideAndMainCam:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WideCameraUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 45
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mIsWideAndMainCam:Z

    .line 69
    new-instance p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 52
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->full_zoom_ui_for_itel:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 53
    new-instance p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    goto :goto_2c

    .line 55
    :cond_27
    new-instance p0, Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 57
    :goto_2c
    move-object p3, v7

    check-cast p3, Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 58
    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 59
    new-instance p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 60
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 61
    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 62
    iget-object p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .registers 5

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 296
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_macro"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 297
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 298
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 299
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_zoom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 300
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_crop_fov"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 301
    :cond_4d
    new-instance v1, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Lcom/transsion/camera/app/ui/manager/WideCameraUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_5d

    .line 304
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 307
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_64

    .line 308
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 311
    :cond_64
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_8d

    .line 314
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 315
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 316
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 317
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 319
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_4

    .line 320
    const-string v1, "key_when_wide_main_changed"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto/16 :goto_4

    :cond_9a
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_when_wide_main_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_17

    :cond_c
    if-eqz p2, :cond_17

    .line 74
    const-string/jumbo p1, "wide_camera_selected_value"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mIsWideAndMainCam:Z

    :cond_17
    :goto_17
    return-void
.end method

.method private unInitSettingUIs(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_1f

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1f

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 288
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    .line 290
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_7

    .line 137
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->couldShow(Z)V

    .line 139
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_e

    .line 140
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->couldShow(Z)V

    :cond_e
    return-void
.end method

.method public doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 266
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p3

    .line 267
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isFaceBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_2b

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    goto :goto_2d

    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    .line 271
    :goto_2d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->initSettingUIList(Ljava/util/List;)V

    if-eqz p3, :cond_47

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    .line 276
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    .line 280
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .registers 4

    .line 102
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_1f

    .line 104
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hide()V

    :cond_1f
    return-void
.end method

.method public hideWideCamera()V
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 152
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    :cond_7
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    .line 226
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_a

    .line 228
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->notifyCameraOperateActionToUI(I)V

    :cond_a
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    return-object p1
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 3

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 178
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    :cond_7
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 210
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_a

    .line 212
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->onOrientationChanged(IZ)V

    :cond_a
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 8

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 203
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 1

    .line 184
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_a

    .line 186
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->pause()V

    :cond_a
    return-void
.end method

.method public setCurrentModeName(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 218
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_a

    .line 220
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setEnable(Z)V

    :cond_a
    return-void
.end method

.method public setOffsetPadding(I)V
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 327
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setOffsetPadding(I)V

    :cond_7
    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSecondDefaultZoomValue(I)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 234
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_22

    .line 236
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_22

    .line 239
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_19

    .line 241
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 243
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p1, :cond_22

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setTeleSecondDefaultZoomValue(I)V
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setTeleSecondDefaultZoomValue(I)V

    return-void
.end method

.method public setUIState(I)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setUIState(I)V

    return-void
.end method

.method public show()V
    .registers 4

    .line 94
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    .line 96
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->show(Z)V

    :cond_20
    return-void
.end method

.method public showWideCamera()V
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 146
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->showWideCamera()V

    :cond_7
    return-void
.end method

.method public translateWideCamera(IZ)V
    .registers 3

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 164
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->translateWideCamera(IZ)V

    :cond_7
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 158
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->translateWideCamera(Z)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->unInit()V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_15

    .line 195
    const-string v1, "key_when_wide_main_changed"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_15
    return-void
.end method

.method public updateItemValue()V
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 170
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateItemValue()V

    :cond_7
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_7

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWideCameraUI preCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    .line 116
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p1, :cond_37

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 117
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    .line 120
    :cond_37
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    return-void

    .line 123
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_7

    .line 131
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
