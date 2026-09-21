.class public Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

.field private mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;


# direct methods
.method public static synthetic $r8$lambda$CjVcCZrQvuKSRFuoqRrWVQjn2-A(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->lambda$new$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pf9fzzSO0nDR7Vqr13zrStvv4nY(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    .line 96
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

    return-void
.end method

.method private synthetic lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/graphics/Rect;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void

    .line 103
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getCurrentStyleOffValue()Ljava/lang/String;
    .registers 1

    .line 87
    const-string p0, "0"

    return-object p0
.end method

.method public getVideoItemList()Ljava/util/List;
    .registers 3

    .line 73
    invoke-static {}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getVideoFrameItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 6

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->video_frame_panel_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    sget v1, Lcom/transsion/camera/R$id;->frame_panel_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    .line 40
    sget v1, Lcom/transsion/camera/R$id;->frame_recyclerview_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 41
    sget v1, Lcom/transsion/camera/R$id;->frame_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    if-nez v0, :cond_44

    .line 43
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->on3ATouchAreaListener(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;)V

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->setItemType(Ljava/lang/String;)V

    .line 47
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;Lcom/transsion/camera/app/common/IAppUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_13

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    iget-object v2, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->postRectRestrictionArea(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    .line 82
    :cond_13
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    if-eqz p0, :cond_7

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 11

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_top_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_left_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_bottom_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_top_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_left_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_bottom_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    .line 68
    invoke-super/range {p0 .. p8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void
.end method
