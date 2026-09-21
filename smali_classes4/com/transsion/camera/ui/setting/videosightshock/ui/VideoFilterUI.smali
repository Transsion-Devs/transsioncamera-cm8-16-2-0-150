.class public Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# static fields
.field protected static final SCROLL_STATE_DRAGGING:I = 0x1

.field protected static final SCROLL_STATE_IDLE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mCurrentItem:Ljava/lang/String;

.field public mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field public mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mFilterTopUI:Landroid/view/View;

.field private final mInfoItem:Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

.field protected mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mScrollerViewContainer:Landroid/widget/RelativeLayout;

.field private mSupportVideoNightFilter:Z


# direct methods
.method public static synthetic $r8$lambda$l4mRYWBer7lJrkwQRLBfNyzK4co(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->lambda$getVideoItemList$1(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yDTGg_XlupNhIBymCv0FCf6-3qg(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->lambda$initSubView$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFilterUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .registers 5

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    .line 55
    new-instance p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    const-string v0, "0"

    const-string v1, "100"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mInfoItem:Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    .line 57
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mSupportVideoNightFilter:Z

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVideoNightFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mSupportVideoNightFilter:Z

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 182
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getVideoItemList$1(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initSubView$0(IZ)V
    .registers 3

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->notifySettingChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentStyleOffValue()Ljava/lang/String;
    .registers 1

    .line 167
    const-string p0, "0"

    return-object p0
.end method

.method public getFilterTopUI()Landroid/view/View;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterTopUI:Landroid/view/View;

    return-object p0
.end method

.method public getScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method public getScrollerViewContainer()Landroid/widget/RelativeLayout;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getVideoItemList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mSupportVideoNightFilter:Z

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getVideoFilterItem(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;)V

    .line 123
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getmCurrentItem()Ljava/lang/String;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    return-object p0
.end method

.method public hideFilterSeekBar()V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initCameraInfoTracker(Landroid/content/Context;)V
    .registers 6

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getVideoItemList()Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    if-eqz v2, :cond_18

    .line 103
    iget-object v3, v2, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    iget v2, v2, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mNameId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 106
    :cond_32
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->initFilterInfo(Ljava/util/Map;)V

    return-void
.end method

.method public initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 7

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->video_filter_panel_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->video_filter_top_ui_layout:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterTopUI:Landroid/view/View;

    .line 69
    sget v2, Lcom/transsion/camera/R$id;->video_filter_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 70
    sget v2, Lcom/transsion/camera/R$id;->filter_panel_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    .line 71
    sget v2, Lcom/transsion/camera/R$id;->filter_recyclerview_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 72
    sget v2, Lcom/transsion/camera/R$id;->filter_recyclerview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;Lcom/transsion/camera/app/common/IAppUI;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->video_filter_top_seekbar_layout:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    sget p1, Lcom/transsion/camera/R$id;->seek_bar_parent_root:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 86
    sget p1, Lcom/transsion/camera/R$id;->seek_bar:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 87
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;)V

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->initCameraInfoTracker(Landroid/content/Context;)V

    return-void
.end method

.method public notifySettingChange(Ljava/lang/String;)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mInfoItem:Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    iput-object v0, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    .line 153
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mLevel:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mSupportVideoNightFilter:Z

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getRealFilterValueList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mValue:I

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mInfoItem:Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "key_video_filter_style"

    if-eqz p1, :cond_47

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->isSeekBarZero(Ljava/lang/String;Z)V

    goto :goto_4d

    .line 159
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->isSeekBarZero(Ljava/lang/String;Z)V

    .line 161
    :goto_4d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 4

    .line 130
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    .line 131
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 134
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->recoverSeekBarValue(I)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    return-void
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbf

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected recoverSeekBarValue(I)V
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v3, v3, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->notifySettingChange(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->notifySettingChange(Ljava/lang/String;)V

    return-void
.end method

.method public resetCurrentItem()V
    .registers 2

    .line 307
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 172
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->setEnable(Z)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_a

    .line 174
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_11

    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_11
    return-void
.end method

.method public showFilterSeekBar()V
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 193
    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->recoverSeekBarValue(I)V

    :cond_23
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    return-void
.end method

.method public updateScrollerViewLayout(II)V
    .registers 3

    return-void
.end method

.method public updateSeekBarLayout(ZIIII)V
    .registers 15

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 210
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationY(F)V

    const/4 v4, 0x1

    const/16 v5, 0x33

    const/16 v6, 0x55

    const/16 v7, 0x5a

    const/16 v8, 0x10e

    if-ne p4, v4, :cond_e4

    const/16 p2, 0x168

    if-eqz p5, :cond_ab

    if-eq p5, v7, :cond_85

    const/16 p3, 0xb4

    if-eq p5, p3, :cond_61

    if-eq p5, v8, :cond_3b

    if-eq p5, p2, :cond_ab

    goto/16 :goto_ce

    :cond_3b
    const/16 p3, 0x35

    .line 230
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    sget p3, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_top:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_50

    .line 233
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_support_only_one_expand_90_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_56

    .line 234
    :cond_50
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_56
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_ce

    .line 222
    :cond_61
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    sget p3, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_top:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p1, :cond_74

    .line 225
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_support_only_one_expand_0_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_7a

    .line 226
    :cond_74
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_7a
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 227
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ce

    :cond_85
    const/16 p3, 0x53

    .line 214
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    sget p3, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_top:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_9a

    .line 217
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_support_only_one_expand_90_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_a0

    .line 218
    :cond_9a
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_a0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 219
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_90_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_ce

    .line 239
    :cond_ab
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    sget p3, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_top:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p1, :cond_be

    .line 242
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_support_only_one_expand_0_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_c4

    .line 243
    :cond_be
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_c4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 244
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_0_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 248
    :goto_ce
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_expand_width:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, p5, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/2addr p5, v8

    rem-int/2addr p5, p2

    invoke-virtual {p1, p5, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_185

    :cond_e4
    const/4 p1, 0x4

    const/high16 v4, 0x43340000    # 180.0f

    if-ne p4, p1, :cond_11b

    .line 252
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 254
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 255
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_right:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationY(F)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v7, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 259
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_width:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_185

    :cond_11b
    const/4 p1, 0x5

    if-ne p4, p1, :cond_150

    .line 261
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 262
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_bottom:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 264
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_hover_margin_right:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationY(F)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 268
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_width:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_185

    :cond_150
    const/16 p1, 0x50

    .line 270
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_width:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr p2, p3

    .line 272
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    sget p1, Lcom/transsion/camera/R$dimen;->video_filter_seekbar_column_margin_left:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 274
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_17b

    if-nez p4, :cond_17b

    if-ne p5, v7, :cond_173

    move p5, v8

    goto :goto_176

    :cond_173
    if-ne p5, v8, :cond_176

    move p5, v7

    .line 281
    :cond_176
    :goto_176
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 283
    :cond_17b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v3, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 286
    :goto_185
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterSeekBarRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 11

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_top_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_left_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_0_margin_bottom_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_top_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_left_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_sight_shock_expand_90_margin_bottom_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    .line 117
    invoke-super/range {p0 .. p8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void
.end method
