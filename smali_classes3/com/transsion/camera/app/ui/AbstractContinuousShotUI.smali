.class public abstract Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mLowLight:Z

.field private mMainHandler:Landroid/os/Handler;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field protected mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mProgressNumberFormat:Ljava/lang/String;

.field protected mResources:Landroid/content/res/Resources;

.field protected mRootView:Landroid/view/View;

.field protected mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field protected mShotProgress:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$iy26cmC-Lc4r_U4dTpLHMUzw6Sc(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideContinuousShotView(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->hideContinuousShotView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractContinuousShotUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 67
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method private hideContinuousShotView()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressHide(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mLowLight:Z

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 73
    sget v0, Lcom/transsion/camera/R$layout;->continuous_shot_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    .line 76
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mLowLight:Z

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onContinuousShotProgress(II)V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onContinuousShotProgressHide(Landroid/view/View;)V
    .registers 2

    .line 135
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressHide"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onContinuousShotProgressShow(Landroid/view/View;)V
    .registers 2

    .line 131
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressShow"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 4

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 96
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_24

    .line 98
    const-string v1, "mProgressContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_24
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 1

    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->continuous_shot_progress_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->updateCSContainerLayoutParams(Z)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->continuous_shot_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->continuous_shot_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    return-void
.end method

.method protected showShotProgress(II)V
    .registers 5

    const/4 v0, 0x1

    if-ne v0, p1, :cond_8

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressShow(Landroid/view/View;)V

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected updateCSContainerLayoutParams(Z)V
    .registers 5

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x51

    .line 178
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->continuous_shot_root_bottom_margin:I

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
