.class public Lcom/transsion/camera/app/ui/manager/ShutterUI5Manager;
.super Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/ShutterUINew;
    .registers 4

    .line 20
    new-instance p0, Lcom/transsion/camera/app/ui/ShutterUI5;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ShutterUI5;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
