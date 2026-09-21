.class public Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mDefaultIndex:I

.field private mDots:Ljava/util/List;

.field private mDotsLayout:Landroid/widget/LinearLayout;

.field private mExitComplete:Z

.field private mGuidePager:Landroidx/viewpager/widget/ViewPager;

.field protected mPagerIds:Ljava/util/List;

.field protected mRTLDirection:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mRoot:Landroid/widget/FrameLayout;

.field private mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# direct methods
.method public static synthetic $r8$lambda$0D6AX0AwdcmMr8zuTR5_VV5VUbI(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JTGknBzQssFZkilaW-6XOrGSz9M(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->lambda$createFragmentInstance$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDots(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExitComplete(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mRTLDirection:Z

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDefaultIndex:I

    return-void
.end method

.method private createDotView()Landroid/widget/ImageView;
    .registers 6

    .line 155
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget p0, Lcom/transsion/camera/R$drawable;->ic_guide_dot_unselected:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private initDots()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3f

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    .line 143
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->createDotView()Landroid/widget/ImageView;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 148
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDefaultIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_guide_dot_selected:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 150
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$createFragmentInstance$1(Landroid/view/View;)V
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDefaultIndex:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .registers 4

    .line 50
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "param1"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createFragmentInstance(II)Landroid/app/Fragment;
    .registers 4

    .line 135
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->newInstance(IILandroid/view/View$OnClickListener;)Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    move-result-object p0

    return-object p0
.end method

.method public exit()V
    .registers 3

    .line 197
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 201
    invoke-virtual {v1}, Landroid/app/Fragment;->onDestroyView()V

    goto :goto_1a

    .line 204
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "guide_pager_root"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    :cond_34
    return-void
.end method

.method public exitWithFadeOut()V
    .registers 3

    .line 169
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    .line 174
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->startExitAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected initViewPager()V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 125
    :goto_10
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 126
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->createFragmentInstance(II)Landroid/app/Fragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 128
    :cond_2e
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 131
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Lcom/transsion/camera/app/ui/GuidePagerRootFragment-IA;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 67
    sget p3, Lcom/transsion/camera/R$layout;->fragment_guide_pager_root:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    sget p2, Lcom/transsion/camera/R$id;->guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mRoot:Landroid/widget/FrameLayout;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mResources:Landroid/content/res/Resources;

    .line 70
    sget p2, Lcom/transsion/camera/R$id;->layout_dots:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    .line 71
    sget p2, Lcom/transsion/camera/R$id;->pager_guide:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initDots()V

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->updateLayoutParamsAndViewPager()V

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    const/16 v1, 0x4e

    .line 110
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGuideFragmentEndTime()V

    .line 113
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_1a

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentDestroy()V

    :cond_1a
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_a

    .line 102
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentExitView()V

    :cond_a
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_c

    const/16 v1, 0x6b

    .line 91
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 93
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_13

    .line 94
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentResume()V

    :cond_13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;II)V
    .registers 4

    .line 215
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mRTLDirection:Z

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-void
.end method

.method public updateIndex(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDefaultIndex:I

    return-void
.end method

.method protected updateLayoutParamsAndViewPager()V
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initViewPager()V

    return-void
.end method
