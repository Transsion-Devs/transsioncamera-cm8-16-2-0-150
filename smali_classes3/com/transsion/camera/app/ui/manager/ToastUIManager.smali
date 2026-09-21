.class public Lcom/transsion/camera/app/ui/manager/ToastUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# instance fields
.field protected final mToastUI:Lcom/transsion/camera/app/ui/IToastUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->createToastUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/ToastUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    return-void
.end method


# virtual methods
.method protected createToastUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/ToastUI;
    .registers 2

    .line 30
    new-instance p0, Lcom/transsion/camera/app/ui/ToastUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;-><init>()V

    return-object p0
.end method

.method public hideToast()V
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->hideToast()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IToastUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 73
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    if-eqz p0, :cond_a

    .line 75
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IToastUI;->onOrientationChanged(IZ)V

    :cond_a
    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->hideToast()V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/IToastUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IToastUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->unInit()V

    return-void
.end method
