.class public Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ContinuousShotUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->createContinuousShotUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/ContinuousShotUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    return-void
.end method


# virtual methods
.method protected createContinuousShotUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/ContinuousShotUI;
    .registers 2

    .line 34
    new-instance p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ContinuousShotUI;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object p0
.end method

.method public onContinuousShotProgress(II)V
    .registers 6

    .line 60
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 3

    .line 67
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotStop()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 54
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->setupViews()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->unInit()V

    return-void
.end method
