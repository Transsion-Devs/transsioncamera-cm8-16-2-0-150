.class public Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;
.super Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;
    }
.end annotation


# instance fields
.field private final BACKGROUND_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final BACKGROUND_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final CONTENT_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final CONTENT_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final ICON_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentMode:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDescriptionTextViewList:Ljava/util/ArrayList;

.field private mDstMarginBottom:I

.field private mDstMarginTop:I

.field private final mImageViewRootList:Ljava/util/ArrayList;

.field private volatile mIsDescriptionScroll:Z

.field private mIsPreviewRectUnChanged:Z

.field private mIsShowPreviewCover:Z

.field private mLastMode:Ljava/lang/String;

.field private mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

.field private mPreviewCoverAdapter:Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

.field private mPreviewCoverBack:Landroid/widget/ImageView;

.field private mPreviewCoverLayout:Landroid/widget/FrameLayout;

.field private mPreviewCoverRoot:Landroid/widget/FrameLayout;

.field private mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mSrcMarginBottom:I

.field private mSrcMarginTop:I

.field private final mTextViewRootList:Ljava/util/ArrayList;

.field private final mTitleTextViewList:Ljava/util/ArrayList;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

.field private mViewPagerIndicator:Landroid/widget/LinearLayout;

.field private viewpageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public static synthetic $r8$lambda$0cvx0_LngHvbQJbSce3pGCa_B4s(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->lambda$initPreviewCoverBackButton$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3dk4HHEIOqEPssjPaEzZ4rBF84(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 477
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 478
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$XZpZPa2izrkM6Jq87qqEBOv2BjI(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    const-string v1, "bottomMargin"

    const-string/jumbo v2, "topMargin"

    if-eqz v0, :cond_2b

    .line 455
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 456
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 457
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 458
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 459
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_50

    .line 460
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 461
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 462
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 463
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    return-void
.end method

.method public static synthetic $r8$lambda$jHvu1sa47j0HBduQTW3nzQxqW0U(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->lambda$initPicturePage$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDescriptionScroll(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsDescriptionScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCoverAdapter(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverAdapter:Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCoverRoot(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mUIHandler:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPagerIndicator(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 10

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 60
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const p3, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->BACKGROUND_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 62
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, p2, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->BACKGROUND_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 64
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v3, v1, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v3, v1, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 68
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, p2, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->ICON_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    .line 88
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsPreviewRectUnChanged:Z

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsDescriptionScroll:Z

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    .line 293
    new-instance p1, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$2;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->viewpageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 103
    iput-object p4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    .line 104
    new-instance p1, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mUIHandler:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    .line 105
    iput-object p5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroid/content/Context;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)[Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)[Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    return-object p0
.end method

.method private assignMarginTopBottomByRatio(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_10

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "4:3"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_ratio"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_10
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->isFullSizeRatio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x0

    .line 531
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    .line 532
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    return-void

    .line 533
    :cond_1c
    const-string v0, "16:9"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    return-void

    .line 537
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    return-void
.end method

.method private initAnimPage(I)Landroid/widget/LinearLayout;
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->preview_cover_ui_anim_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    sget v1, Lcom/transsion/camera/R$id;->preview_cover_anim_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;

    .line 132
    sget v2, Lcom/transsion/camera/R$id;->preview_cover_text_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    sget v3, Lcom/transsion/camera/R$id;->preview_cover_text_description:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, "animation"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsPreviewRectUnChanged:Z

    if-eqz p1, :cond_62

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->preview_cover_image_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 141
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_62
    const/4 p1, 0x1

    .line 143
    invoke-virtual {v1, p1}, Lcom/tencent/qgame/animplayer/AnimView;->setMute(Z)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private initAppearAnimation()V
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setBackgroundAppearAnimation(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_34

    .line 590
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsPreviewRectUnChanged:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setContentAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 593
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setIconAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    return-void
.end method

.method private initIndicatorDots()V
    .registers 8

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_13
    const/4 v0, 0x0

    move v2, v0

    .line 425
    :goto_15
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5c

    .line 426
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 428
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 429
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v1

    if-eq v2, v6, :cond_3d

    const/16 v6, 0x18

    .line 432
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 434
    :cond_3d
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    sget v5, Lcom/transsion/camera/R$drawable;->preview_cover_guide_dot_color:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object v5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 438
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 440
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initPicturePage(I)Landroid/view/View;
    .registers 9

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->preview_cover_ui_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    sget v1, Lcom/transsion/camera/R$id;->preview_cover_image_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 152
    sget v2, Lcom/transsion/camera/R$id;->preview_cover_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 154
    new-instance v3, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$1;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 161
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 162
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-eqz v4, :cond_63

    const-string v4, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    iget-object v5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 164
    sget v5, Lcom/transsion/camera/R$dimen;->preview_cover_guide_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    sget v5, Lcom/transsion/camera/R$dimen;->preview_cover_guide_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    .line 169
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_89

    .line 172
    :cond_63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 173
    sget v5, Lcom/transsion/camera/R$dimen;->preview_cover_guide_width_deprecated:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    sget v5, Lcom/transsion/camera/R$dimen;->preview_cover_guide_height_deprecated:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 178
    sget v5, Lcom/transsion/camera/R$dimen;->preview_cover_guide_image_width_deprecated:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :goto_89
    sget v3, Lcom/transsion/camera/R$id;->preview_cover_text_root:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 182
    sget v4, Lcom/transsion/camera/R$id;->preview_cover_text_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 183
    sget v5, Lcom/transsion/camera/R$id;->preview_cover_text_description:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 184
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 185
    new-instance v6, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v4, p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 195
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsPreviewRectUnChanged:Z

    if-eqz p1, :cond_f8

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->preview_cover_image_top_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 198
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 200
    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 202
    :cond_f8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initPreviewCoverBackButton()V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->preview_cover_back_button_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->preview_cover_back_button_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 395
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$drawable;->preview_cover_close_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewPageDotsLocation()V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    const/4 v0, 0x0

    move v2, v0

    .line 259
    :goto_8
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 260
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_1a

    move v4, v1

    goto :goto_1b

    :cond_1a
    move v4, v0

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 262
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mUIHandler:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    const/16 v0, 0x3e9

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2a
    return-void
.end method

.method private synthetic lambda$initPicturePage$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    move p1, v0

    :goto_b
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsDescriptionScroll:Z

    return v0
.end method

.method private synthetic lambda$initPreviewCoverBackButton$1(Landroid/view/View;)V
    .registers 2

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return-void
.end method

.method private setBackgroundAppearAnimation(Landroid/view/View;)V
    .registers 11

    .line 543
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 544
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRatio:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->assignMarginTopBottomByRatio(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mSrcMarginBottom:I

    sub-int v4, v1, v2

    .line 546
    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mSrcMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    iget v5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->BACKGROUND_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/16 v6, 0x1c2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startTranslateAnimation(Landroid/view/View;IIIIIILandroid/view/animation/PathInterpolator;)V

    const/4 v5, 0x0

    .line 548
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->BACKGROUND_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x1c2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method private setBackgroundNoAnimation(Landroid/view/View;)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRatio:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->assignMarginTopBottomByRatio(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 554
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 555
    iget p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 556
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setContentAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Z)V
    .registers 13

    if-eqz p3, :cond_10

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->preview_cover_image_src_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_e
    move v2, v1

    goto :goto_1d

    .line 562
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->preview_cover_image_src_top_margin_reset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_e

    :goto_1d
    if-eqz p3, :cond_2d

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->preview_cover_image_dst_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_2b
    move v3, v1

    goto :goto_3a

    .line 565
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->preview_cover_image_dst_top_margin_reset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2b

    :goto_3a
    const/4 v7, 0x0

    .line 566
    iget-object v8, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startTranslateAnimation(Landroid/view/View;IIIIIILandroid/view/animation/PathInterpolator;)V

    .line 568
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x1f4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 570
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->preview_cover_text_src_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 571
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->preview_cover_text_dst_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/16 v7, 0x64

    .line 572
    iget-object v8, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_TRANSLATE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startTranslateAnimation(Landroid/view/View;IIIIIILandroid/view/animation/PathInterpolator;)V

    const/16 v5, 0x64

    .line 574
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x1f4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method private setDisappearAnimation(Landroid/widget/FrameLayout;)V
    .registers 9

    const/4 v5, 0x0

    .line 583
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->CONTENT_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v4, 0xfa

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method private setIconAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 10

    const/4 v5, 0x0

    .line 578
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->ICON_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 579
    iget-object v6, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->ICON_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method private showGuideViewWithNoAnim()V
    .registers 12

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRatio:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->isFullSizeRatio(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 355
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mLastMode:Ljava/lang/String;

    const-string v4, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_24

    :cond_22
    move-object v4, p0

    goto :goto_93

    .line 356
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_30

    .line 357
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 358
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setBackgroundNoAnimation(Landroid/view/View;)V

    .line 360
    :cond_30
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    if-eqz v3, :cond_37

    .line 361
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 363
    :cond_37
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3e

    .line 364
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 366
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initIndicatorDots()V

    .line 367
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initViewPager(Z)V

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initViewPageDotsLocation()V

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initPreviewCoverBackButton()V

    .line 370
    iget-object v5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->BACKGROUND_ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x1c2

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 371
    iget-object p0, v4, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length p0, p0

    iget-object v1, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p0, v1, :cond_8a

    iget-object p0, v4, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length p0, p0

    iget-object v1, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p0, v1, :cond_8a

    move p0, v2

    .line 373
    :goto_6f
    iget-object v1, v4, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_8a

    .line 374
    iget-object v1, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1, v3, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setContentAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_6f

    .line 377
    :cond_8a
    iget-object p0, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    iget-object v0, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setIconAppearAnimation(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    .line 378
    iput-boolean v2, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    .line 380
    :goto_93
    iget-object p0, v4, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x17c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 381
    iget-object p0, v4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    const-string/jumbo v0, "value_preview_cover_guide_ui_show"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->notifyPreviewCoverShowOrHide(Ljava/lang/String;)V

    :cond_a2
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V
    .registers 9

    const/4 v0, 0x2

    .line 472
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const-string p3, "alpha"

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 473
    filled-new-array {p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 474
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 475
    iget-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    iget-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$3;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;F)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startTranslateAnimation(Landroid/view/View;IIIIIILandroid/view/animation/PathInterpolator;)V
    .registers 10

    .line 447
    const-string/jumbo v0, "topMargin"

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 448
    const-string p3, "bottomMargin"

    filled-new-array {p4, p5}, [I

    move-result-object p4

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 449
    filled-new-array {p2, p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    int-to-long p3, p6

    .line 450
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 451
    iget-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 453
    iget-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p7

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public hideGuideView()V
    .registers 2

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_19

    .line 405
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setDisappearAnimation(Landroid/widget/FrameLayout;)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->notifyPreviewCoverHide()V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x17d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_19
    return-void
.end method

.method public hideGuideViewNoAnim()V
    .registers 3

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1b

    const/16 v1, 0x8

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->notifyPreviewCoverHide()V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x17d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1b
    return-void
.end method

.method public inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_5c

    if-nez p3, :cond_7

    goto :goto_5c

    .line 112
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    .line 113
    sget p2, Lcom/transsion/camera/R$id;->below_main_control_layer_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 114
    sget p2, Lcom/transsion/camera/R$layout;->preview_cover_ui_layout:I

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    sget p2, Lcom/transsion/camera/R$id;->preview_cover_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverLayout:Landroid/widget/FrameLayout;

    .line 116
    sget p2, Lcom/transsion/camera/R$id;->preview_cover_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    .line 117
    sget p2, Lcom/transsion/camera/R$id;->preview_cover_view_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 118
    sget p2, Lcom/transsion/camera/R$id;->preview_cover_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mViewPagerIndicator:Landroid/widget/LinearLayout;

    .line 119
    sget p2, Lcom/transsion/camera/R$id;->preivew_cover_back_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    .line 121
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    if-eqz p1, :cond_59

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideViewWithNoAnim()V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    .line 125
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverLayout:Landroid/widget/FrameLayout;

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method public initViewPager(Z)V
    .registers 8

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsPreviewRectUnChanged:Z

    const/4 p1, -0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    .line 215
    :goto_1f
    iget-object v4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_43

    .line 216
    aget-object v4, v4, v2

    const-string v5, "animation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-ne v3, p1, :cond_31

    move v3, v2

    .line 220
    :cond_31
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initAnimPage(I)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 222
    :cond_39
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initPicturePage(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 226
    :cond_43
    array-length v2, v4

    const/4 v4, 0x1

    if-gt v2, v4, :cond_69

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 228
    new-instance p1, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverAdapter:Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->viewpageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    .line 233
    :cond_69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-le v3, p1, :cond_7e

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v4

    if-ne v3, p1, :cond_7e

    .line 236
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initAnimPage(I)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 238
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initPicturePage(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez v3, :cond_96

    .line 244
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initAnimPage(I)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 246
    :cond_96
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initPicturePage(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_9d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 250
    new-instance p1, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    invoke-direct {p1, v2}, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverAdapter:Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->viewpageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->currentModeSupportPreviewCover()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 270
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    .line 271
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginTop:I

    .line 272
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_27

    add-int/lit16 p1, p1, 0xaf

    :cond_27
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDstMarginBottom:I

    .line 273
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4a

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initIndicatorDots()V

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initViewPager(Z)V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initViewPageDotsLocation()V

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initPreviewCoverBackButton()V

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->initAppearAnimation()V

    .line 279
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x17c

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_4a
    return-void

    .line 284
    :cond_4b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mSrcMarginTop:I

    .line 285
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mSrcMarginBottom:I

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public resetParams()V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 498
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 499
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 500
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 501
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    .line 505
    :goto_21
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 506
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x384

    .line 507
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v3, 0x258

    .line 508
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v3, 0x135

    .line 509
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 510
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mImageViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 514
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_86

    .line 515
    :goto_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 517
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 518
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v2, 0x66

    .line 519
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 520
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTextViewRootList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_86
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public setLastMode(Ljava/lang/String;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mLastMode:Ljava/lang/String;

    return-void
.end method

.method public showGuideView()V
    .registers 2

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mIsShowPreviewCover:Z

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideViewWithNoAnim()V

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 7

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_22

    if-eqz p1, :cond_13

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_background_color_ring_screen_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1f

    .line 600
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->preview_cover_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 598
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_22
    const/4 v0, 0x0

    move v1, v0

    .line 603
    :goto_24
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 604
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_43

    .line 605
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$color;->preview_cover_text_title_color_ring_screen_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_4f

    .line 606
    :cond_43
    iget-object v3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$color;->preview_cover_text_title_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 604
    :goto_4f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 609
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 610
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mDescriptionTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_74

    .line 611
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$color;->preview_cover_text_description_color_ring_screen_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_80

    .line 612
    :cond_74
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$color;->preview_cover_text_description_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 610
    :goto_80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 615
    :cond_86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->mPreviewCoverBack:Landroid/widget/ImageView;

    if-eqz p0, :cond_94

    if-eqz p1, :cond_8f

    .line 617
    sget p1, Lcom/transsion/camera/R$drawable;->preview_cover_close_icon_ring_screen:I

    goto :goto_91

    .line 618
    :cond_8f
    sget p1, Lcom/transsion/camera/R$drawable;->preview_cover_close_icon:I

    .line 616
    :goto_91
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_94
    return-void
.end method
