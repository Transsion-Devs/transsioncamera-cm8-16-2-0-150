.class public abstract Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected mBottomMarginH:I

.field protected mBottomMarginV:I

.field protected mHoverAnimator:Landroid/animation/ValueAnimator;

.field protected mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLastOffset:I

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLeftMarginH:I

.field protected mLeftMarginV:I

.field private mOrientation:I

.field private mParentRootView:Landroid/view/View;

.field protected mParentView:Landroid/view/ViewGroup;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field protected mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mTopMarginH:I

.field protected mTopMarginV:I

.field protected mTopViewContainer:Landroid/view/ViewGroup;

.field protected mVidSigShockItemDecoration:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

.field private mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

.field protected final mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;


# direct methods
.method public static synthetic $r8$lambda$66cLijFlk2iOyU8yQuUEnnox0qA(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 239
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 240
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmVssItemAdapter(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractVssUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mScreenFormType:I

    .line 61
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 66
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    .line 69
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    .line 72
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    .line 73
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    .line 74
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    return-void
.end method

.method private checkStatus(Ljava/lang/String;)V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onInitialFinished(ZLjava/lang/String;)V

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 317
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract getCurrentStyleOffValue()Ljava/lang/String;
.end method

.method public getRecyclerViewRoot()Landroid/widget/FrameLayout;
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getVideoItemList()Ljava/util/List;
.end method

.method public getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    return-object p0
.end method

.method public initSelectRecyclerViewData()V
    .registers 6

    .line 105
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 108
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    if-ltz v1, :cond_15

    .line 109
    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 112
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVidSigShockItemDecoration:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_7d

    .line 133
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_effect_style"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getRealEffectIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_7d

    .line 135
    :cond_5a
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_frame_style"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 136
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getRealFrameIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_7d

    .line 138
    :cond_6d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 140
    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    :cond_7d
    :goto_7d
    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getVideoItemList()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;-><init>(Ljava/util/List;II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setSelectedKey(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 100
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;Landroid/view/ViewGroup;)V
    .registers 8

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    .line 87
    iput-object p6, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 88
    iput-object p4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    .line 89
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 90
    iput-object p7, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopViewContainer:Landroid/view/ViewGroup;

    .line 91
    iput p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mOrientation:I

    .line 92
    invoke-virtual {p0, p6}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSubView(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSelectRecyclerViewData()V

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->checkStatus(Ljava/lang/String;)V

    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_e

    .line 323
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    :cond_e
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 154
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mScreenFormType:I

    if-nez v0, :cond_f

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onOrientationChanged(I)V

    :cond_f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 160
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mScreenFormType:I

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public recoverPanelToDefault(Z)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    if-nez v0, :cond_9

    goto :goto_35

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setCurrentPosition(IZ)V

    .line 356
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->setEnable(Z)V

    if-eqz p1, :cond_35

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 361
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 362
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    :cond_35
    :goto_35
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    if-eqz p0, :cond_7

    .line 345
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method public updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 312
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method

.method public updateRecyclerViewScrollState(I)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1b

    .line 339
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;->setScrollEnabled(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 10

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_c

    .line 167
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateSettingUILayoutUI5(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void

    .line 170
    :cond_c
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateSettingUILayoutUI4(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void
.end method

.method public updateSettingUILayoutUI4(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 177
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 178
    invoke-interface/range {p5 .. p5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v4

    .line 179
    invoke-interface/range {p5 .. p5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, 0x0

    .line 184
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 186
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v11, 0x55

    const/16 v12, 0x5a

    const/16 v13, 0x53

    const/16 v14, 0x10e

    const/4 v15, 0x1

    if-ne v2, v15, :cond_9f

    .line 189
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v4, 0x168

    if-eqz v3, :cond_86

    if-eq v3, v12, :cond_77

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_68

    if-eq v3, v14, :cond_57

    if-eq v3, v4, :cond_86

    goto :goto_94

    :cond_57
    const/16 v5, 0x35

    .line 205
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 207
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 208
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_94

    .line 198
    :cond_68
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 200
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 201
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_94

    .line 192
    :cond_77
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 194
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginH:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_94

    .line 212
    :cond_86
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 213
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 214
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLeftMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 215
    iget v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mBottomMarginV:I

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 219
    :goto_94
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/2addr v3, v14

    rem-int/2addr v3, v4

    invoke-virtual {v5, v3, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 220
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1d3

    .line 221
    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 222
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_height:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_db

    .line 225
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->videoFaceBeautyMakeupCombineUI()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "video_sight_shock_hover_support_setting_ui_bottom_margin"

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_d9

    .line 228
    :cond_cf
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "hover_support_setting_ui_bottom_margin"

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    :goto_d9
    add-int/2addr v4, v3

    goto :goto_dd

    :cond_db
    sub-int v4, v5, p7

    :goto_dd
    if-eqz p6, :cond_106

    .line 235
    filled-new-array {v10, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 236
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda1;

    invoke-direct {v4, v6, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1d3

    .line 244
    :cond_106
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1d3

    :cond_10a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_150

    .line 247
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 248
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v12, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 250
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_left_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 252
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_bottom_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 253
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_right_90:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1d3

    :cond_150
    const/4 v3, 0x5

    if-ne v2, v3, :cond_197

    .line 255
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x33

    .line 256
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 257
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v14, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 258
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_left_270:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_bottom_270:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 261
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_hover_margin_right_270:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1d3

    .line 263
    :cond_197
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_recycler_bottom_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 265
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 266
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1c1

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_1c1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1c1

    if-eqz p8, :cond_1c1

    .line 268
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v15, v9, v9}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 270
    :cond_1c1
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->video_sight_shock_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v5, p7

    .line 271
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    :goto_1d3
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVidSigShockItemDecoration:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

    if-eqz v3, :cond_1da

    .line 274
    invoke-virtual {v3, v2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->setScreenFormType(I)V

    .line 276
    :cond_1da
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateSettingUILayoutUI5(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 9

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    const/4 p5, 0x0

    .line 287
    invoke-virtual {p1, p5, p5, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p6, 0x53

    .line 289
    iput p6, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 290
    iget-object p6, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p6, p5, p5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 291
    iget-object p6, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz p6, :cond_36

    iget-object p6, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p6, :cond_36

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_36

    if-eqz p8, :cond_36

    .line 293
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p6, 0x1

    invoke-interface {p2, p6, p5, p5}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 295
    :cond_36
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVidSigShockItemDecoration:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

    if-eqz p2, :cond_3d

    .line 296
    invoke-virtual {p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->setScreenFormType(I)V

    .line 298
    :cond_3d
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
