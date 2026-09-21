.class public Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;
.super Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUsePlatformScreenFlash:Z


# direct methods
.method public static synthetic $r8$lambda$HnQB25PCyApDtLkm42tBYk_suBU(Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashFacadeScreenFlashUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;-><init>()V

    .line 79
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    return-void
.end method

.method private facingFront(Lcom/transsion/camera/app/common/setting/ISetting;)Z
    .registers 2

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 81
    const-string p1, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->showScreenFlashView()V

    return-void

    .line 84
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->hideScreenFlashView()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 41
    const-string p0, "key_flash_facade"

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onOrientationChanged(I)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->onOrientationChanged(I)V

    return-void
.end method

.method public bridge synthetic onScreenFormChanged(IZ)V
    .registers 3

    .line 26
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 26
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 46
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    if-nez p1, :cond_d

    .line 48
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    const/4 v0, 0x7

    .line 51
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    if-nez v0, :cond_30

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->facingFront(Lcom/transsion/camera/app/common/setting/ISetting;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 53
    :cond_1c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_30

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_screen_flash"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_30
    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public bridge synthetic setupEntryView()V
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->setupEntryView()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->unInit()V

    .line 68
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mUsePlatformScreenFlash:Z

    if-eqz v0, :cond_8

    return-void

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_screen_flash"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method
