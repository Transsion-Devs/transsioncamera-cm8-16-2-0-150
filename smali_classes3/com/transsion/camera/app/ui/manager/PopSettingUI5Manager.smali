.class public Lcom/transsion/camera/app/ui/manager/PopSettingUI5Manager;
.super Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 6

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;)Lcom/transsion/camera/app/ui/PopSettingUI;
    .registers 5

    .line 22
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI5;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/transsion/camera/app/ui/PopSettingUI5;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    return-object v0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
