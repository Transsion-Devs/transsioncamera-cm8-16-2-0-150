.class public Lcom/transsion/camera/app/ui/manager/TopBarUI5Manager;
.super Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 7

    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/ui/AbstractTopBarUI;
    .registers 5

    .line 30
    new-instance p0, Lcom/transsion/camera/app/ui/TopBarUI5;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI5;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    return-object p0
.end method

.method protected isInVideoMode(Landroid/graphics/Rect;)Z
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 42
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateInVideoMode(Landroid/graphics/Rect;)V

    return-void
.end method
