.class public Lcom/transsion/camera/app/ui/manager/HintUI5Manager;
.super Lcom/transsion/camera/app/ui/manager/HintUIManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 5

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/HintUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    .line 22
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 24
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object p2

    .line 25
    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected createUI(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;I)Lcom/transsion/camera/app/ui/IHintUI;
    .registers 4

    const/4 p0, 0x1

    if-eq p3, p0, :cond_12

    const/4 p0, 0x2

    if-eq p3, p0, :cond_c

    .line 45
    new-instance p0, Lcom/transsion/camera/app/ui/HintUI5;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI5;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0

    .line 43
    :cond_c
    new-instance p0, Lcom/transsion/camera/app/ui/HintUIItel;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUIItel;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0

    .line 41
    :cond_12
    new-instance p0, Lcom/transsion/camera/app/ui/HintUI5Infinix;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI5Infinix;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    sget-object v1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    .line 52
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 57
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->unInit()V

    return-void
.end method
