.class public Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/IVideoUIExt;


# instance fields
.field private mRecordingIndicator:Landroid/view/View;

.field private mRecordingTimeContainer:Landroid/widget/LinearLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .registers 4

    .line 28
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 30
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    .line 32
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x11

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingIndicator:Landroid/view/View;

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

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
    .registers 6

    .line 42
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    goto :goto_3a

    :cond_a
    if-nez p4, :cond_3a

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x31

    .line 48
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0x28

    .line 52
    invoke-static {p2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI5Ext;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    return p0

    :cond_3a
    :goto_3a
    return p3
.end method
