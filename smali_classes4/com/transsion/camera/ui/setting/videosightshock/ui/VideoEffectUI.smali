.class public Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$OrtX4lNEpEJPLiBFXI8ZXUYwkRo(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;->lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoEffectUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 77
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCurrentStyleOffValue()Ljava/lang/String;
    .registers 1

    .line 73
    const-string p0, "0"

    return-object p0
.end method

.method public getVideoItemList()Ljava/util/List;
    .registers 3

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getVideoEffectItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;)V

    .line 68
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

    sget v1, Lcom/transsion/camera/R$layout;->video_effect_panel_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    sget v1, Lcom/transsion/camera/R$id;->effect_panel_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    .line 40
    sget v1, Lcom/transsion/camera/R$id;->effect_recyclerview_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 41
    sget v1, Lcom/transsion/camera/R$id;->effect_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;Lcom/transsion/camera/app/common/IAppUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 11

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_top_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_left_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_bottom_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_top_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_left_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_bottom_effect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    .line 62
    invoke-super/range {p0 .. p8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void
.end method
