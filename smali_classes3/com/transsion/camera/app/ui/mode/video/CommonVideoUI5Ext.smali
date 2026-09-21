.class public Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/IVideoUIExt;


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mOldValue:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$4tzPzHDWvfFs9D4IN43Hpo18AGU(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->lambda$updateRecordingTimeStyle$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvwJiKAIHZEe9kmKC3k38CYwUog(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x31

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public static synthetic $r8$lambda$lJEj-2jCgEBnUjAmwGLL3rNhudk(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->updateLuxState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonVideoUI5Ext"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->init()V

    return-void
.end method

.method private synthetic lambda$updateRecordingTimeStyle$1(Z)V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    const/high16 p1, -0x1000000

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateLuxState(Z)V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mOldValue:Z

    if-eq p1, v0, :cond_20

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mOldValue:Z

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLuxState: isLowLux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->updateRecordingTimeStyle()V

    :cond_20
    return-void
.end method

.method private updateRecordingTimeStyle()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 92
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mOldValue:Z

    .line 93
    new-instance v2, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .registers 4

    .line 46
    sget v0, Lcom/transsion/camera/R$id;->recording_time_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeViewGroup:Landroid/view/View;

    .line 47
    sget v0, Lcom/transsion/camera/R$id;->recording_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    const/16 v1, 0x11

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->updateRecordingTimeStyle()V

    .line 53
    sget p0, Lcom/transsion/camera/R$id;->recording_time_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_2a
    sget p0, Lcom/transsion/camera/R$id;->recording_indicator:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_36

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_36
    return-void
.end method

.method public init()V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z
    .registers 5

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeViewGroup:Landroid/view/View;

    const/4 p3, 0x0

    if-nez p2, :cond_6

    return p3

    :cond_6
    if-nez p4, :cond_2b

    .line 71
    new-instance p2, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 72
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setTopMargin(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext$$ExternalSyntheticLambda1;-><init>()V

    .line 73
    const-class p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->mRecordingTimeViewGroup:Landroid/view/View;

    .line 75
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_2b
    return p3
.end method
