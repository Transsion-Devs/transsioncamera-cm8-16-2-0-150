.class public Lcom/transsion/camera/app/ui/manager/PreviewUI5Manager;
.super Lcom/transsion/camera/app/ui/manager/PreviewUIManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .registers 5

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)Lcom/transsion/camera/app/ui/PreviewUI;
    .registers 4

    .line 21
    new-instance p0, Lcom/transsion/camera/app/ui/PreviewUI5;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PreviewUI5;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    return-object p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
