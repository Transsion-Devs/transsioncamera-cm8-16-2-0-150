.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/IVideoUIExt;


# instance fields
.field private mRecordingTimeParent:Landroid/widget/LinearLayout;

.field private mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method public static synthetic $r8$lambda$b-PCKfjdd9e6ktOS6G8s_wWvNKs(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x51

    .line 57
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public static synthetic $r8$lambda$o6Kix0i7WFjgPO-X3Aevqoqd3S0(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x31

    .line 45
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateShutterLayout(Landroid/view/View;)V
    .registers 4

    .line 55
    new-instance p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext$$ExternalSyntheticLambda1;-><init>()V

    .line 56
    const-class v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p0

    .line 58
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_progress_circle_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 60
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 62
    :cond_1d
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_shutter_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2f

    const/4 v0, -0x2

    .line 64
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .registers 4

    .line 27
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_time_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 28
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_time_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->updateShutterLayout(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic init()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->init()V

    return-void
.end method

.method public bridge synthetic unInit()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->unInit()V

    return-void
.end method

.method public updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z
    .registers 5

    .line 40
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeParent:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_43

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p2, :cond_a

    goto :goto_43

    :cond_a
    if-nez p4, :cond_43

    .line 44
    new-instance p2, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setTopMargin(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    const-class p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 46
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 47
    new-instance p1, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    const/16 p2, 0x28

    invoke-static {p2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI5Ext;->mRecordingTimeParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_43
    :goto_43
    return p3
.end method
