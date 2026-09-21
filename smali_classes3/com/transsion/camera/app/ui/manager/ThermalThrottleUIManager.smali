.class public Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThermalThrottleUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->createThermalThrottleUI()Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    .line 22
    sget p0, Lcom/transsion/camera/R$animator;->warning_dialog_medium_in_animator:I

    sget v0, Lcom/transsion/camera/R$animator;->warning_dialog_medium_out_animator:I

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->updateFadeAnim(II)V

    return-void
.end method


# virtual methods
.method protected createThermalThrottleUI()Lcom/transsion/camera/app/ui/ThermalThrottleUI;
    .registers 1

    .line 28
    new-instance p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;-><init>()V

    return-object p0
.end method

.method public hide()V
    .registers 3

    .line 58
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hide]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->hide(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onSetupViews()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->initView()V

    return-void
.end method

.method public onThermalThrottleReached(I)V
    .registers 4

    .line 46
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onThermalThrottleReached]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->show(I)V

    return-void
.end method

.method public onVideoThermalWarning(I)V
    .registers 4

    .line 51
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onVideoThermalWarning]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->showVideoThermalWarning(I)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 63
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->pause()V

    return-void
.end method

.method public setCutoutHeight(I)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->setCutoutHeight(I)V

    return-void
.end method

.method public setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 69
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->unInitView()V

    return-void
.end method
