.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mRequestList:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

.field private mToolbar:Landroid/widget/Toolbar;


# direct methods
.method public static synthetic $r8$lambda$xbKVTKyy6erzdS--gFYt-ADamug(Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->lambda$initToolbar$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    return-void
.end method

.method private getFeature()Ljava/lang/String;
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 121
    const-string v0, "ai_feature"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_d
    const-string p0, "key_aigc_effect_2"

    return-object p0
.end method

.method private initRequestList()V
    .registers 7

    .line 100
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    .line 101
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;)V

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 103
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 106
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;

    invoke-direct {v2, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mEmptyView:Landroid/view/View;

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->setItemListener(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->init()V

    return-void
.end method

.method private initToolbar()V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    if-nez v0, :cond_c

    .line 75
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initToolbar mToolbar is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_c
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_title:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-lez v0, :cond_3c

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setting_toolbar_cutout_shift"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 86
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 87
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_toolbar_back:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initToolbar$0(Landroid/view/View;)V
    .registers 3

    .line 94
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "popBackStack back"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 59
    sget-object p3, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    sget p3, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Toolbar;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mToolbar:Landroid/widget/Toolbar;

    .line 63
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_request_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestList:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_empty_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mEmptyView:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->initToolbar()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->initRequestList()V

    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 158
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    if-eqz p0, :cond_a

    .line 151
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->unInit()V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 143
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 144
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 137
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 138
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 129
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/AIFragment;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    if-eqz p0, :cond_20

    .line 131
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->refresh()V

    :cond_20
    return-void
.end method
