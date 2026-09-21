.class public Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;
.super Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickVideoUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 18
    new-instance p1, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 22
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 23
    sget-object p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "QuickVideoUI5: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 36
    sget p0, Lcom/transsion/camera/R$id;->quick_recording_time_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    sget p0, Lcom/transsion/camera/R$id;->quick_video_recording_indicator:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_1b
    sget-object p1, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInflateFinished: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInitQuickVideoUI()V
    .registers 3

    .line 28
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->unInitQuickVideoUI()V

    .line 30
    sget-object p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInitQuickVideoUI: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
