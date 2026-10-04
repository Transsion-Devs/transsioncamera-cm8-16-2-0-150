.class public Lcom/transsion/camera/app/ui/SellingPointGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final OVERLAY_GUIDE_ICON_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final OVERLAY_GUIDE_ROOT_HIDE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final OVERLAY_GUIDE_ROOT_SHOW_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCloseOverlayGuideIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentFloatingViewPagerPosition:I

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentOverlayGuidePagerPosition:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFloatingWindowDrawableIdList:Ljava/util/List;

.field private mFloatingWindowMarginTop:I

.field private mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

.field private mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mIsCameraSwitching:Z

.field private mIsHideByPrivacyMode:Z

.field private mIsLowLight:Z

.field private mIsPopSettingShow:Z

.field private mIsPrivacyModeEnable:Z

.field private mIsQuickVideoBegin:Z

.field private mIsSelfTimerBegin:Z

.field private mIsSuperNightLiteAnimBegin:Z

.field private mIsZoomBegin:Z

.field private mModeSwitchIcon:Landroid/widget/ImageView;

.field private mModeSwitchIconRoot:Landroid/widget/FrameLayout;

.field private mModeSwitchText:Landroid/widget/TextView;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mOverlayContentTextViewList:Ljava/util/ArrayList;

.field private mOverlayGuideContainer:Landroid/widget/LinearLayout;

.field private mOverlayGuideDrawableIdList:Ljava/util/List;

.field private mOverlayGuideMarginBottom:I

.field private mOverlayGuideMarginTop:I

.field private mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

.field private mOverlayGuideRoot:Landroid/widget/FrameLayout;

.field private mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mOverlayImageViewList:Ljava/util/ArrayList;

.field private mOverlayScrollViewList:Ljava/util/ArrayList;

.field private mOverlayTextRootList:Ljava/util/ArrayList;

.field private mOverlayTitleTextViewList:Ljava/util/ArrayList;

.field private mPreviewRatio:D

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mRoot:Landroid/view/View;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSellingPointContentList:Ljava/util/List;

.field private mSellingPointModeList:Ljava/util/List;

.field private mSellingPointTitleList:Ljava/util/List;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-ndxB7ZjXKpdc56C8HZSj6LcnKk(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$initOverlayGuideUI$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$02_PQpkGdAssRAf6bhTGEIRWPZQ(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$initFloatingWindowUI$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0a4mjWsCrMfSE416vQ5IbeQJvoo(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1037
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1038
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_jrfOCFQ1GvhX2ESgKtRnEIU6k(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$initOverlayGuideUI$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnVfewsrGqnPOERXO8Km6w1G10g(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$updateLayoutParamsWithAnim$5(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVwlhaANrAmkIK55FqY9ooXCyq4(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$createOverlayGuideItem$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$la3mHa1x5mF_XKIbeuv3zmUI5Gc(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7vU8TcVf4Lp8CA5l3ctfWNlRow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1062
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    .line 1063
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1064
    const-string/jumbo v0, "topMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1065
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingWindowRoot(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingWindowViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverlayGuidePageIndicator(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverlayGuideViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverlayTitleTextViewList(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSellingPointTitleList(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFloatingViewPagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentOverlayGuidePagerPosition(Lcom/transsion/camera/app/ui/SellingPointGuideUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$menableInfiniteLoop(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentFloatingWindowTitle(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getCurrentFloatingWindowTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreviewRect(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SellingPointGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 11

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ROOT_SHOW_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ROOT_HIDE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ICON_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayImageViewList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTextRootList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayScrollViewList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowMarginTop:I

    .line 128
    iput v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginTop:I

    .line 129
    iput v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginBottom:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 130
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRatio:D

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsCameraSwitching:Z

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPrivacyModeEnable:Z

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsHideByPrivacyMode:Z

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSuperNightLiteAnimBegin:Z

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSelfTimerBegin:Z

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsZoomBegin:Z

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsQuickVideoBegin:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPopSettingShow:Z

    .line 146
    new-instance v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$1;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 159
    new-instance v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 170
    new-instance p1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Lcom/transsion/camera/app/ui/SellingPointGuideUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    .line 171
    iput-object p3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 172
    iput-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method private calculateActualViewPagerPos(I)I
    .registers 2

    if-nez p1, :cond_9

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 545
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p1, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return p1
.end method

.method private createFloatingWindowItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6

    .line 516
    sget v0, Lcom/transsion/camera/R$layout;->floating_window_view_pager_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 519
    sget p2, Lcom/transsion/camera/R$id;->floating_window_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowDrawableIdList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    sget v0, Lcom/transsion/camera/R$id;->floating_window_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x1

    .line 525
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_49

    const/4 p0, 0x2

    .line 528
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 530
    invoke-static {p2, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_49
    return-object p1
.end method

.method private createOverlayGuideItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6

    .line 618
    sget v0, Lcom/transsion/camera/R$layout;->overlay_guide_view_pager_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 621
    sget p2, Lcom/transsion/camera/R$id;->overlay_guide_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideDrawableIdList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 624
    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 625
    new-instance v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$5;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget p2, Lcom/transsion/camera/R$id;->overlay_guide_text_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTextRootList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget p2, Lcom/transsion/camera/R$id;->overlay_guide_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget p2, Lcom/transsion/camera/R$id;->overlay_guide_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget p2, Lcom/transsion/camera/R$id;->overlay_guide_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 646
    new-instance p3, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private enableInfiniteLoop()Z
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentFloatingWindowTitle()Ljava/lang/String;
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_31

    .line 420
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 421
    iget v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->calculateActualViewPagerPos(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 422
    :cond_1c
    iget v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    :goto_1e
    if-ltz v0, :cond_31

    .line 423
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_31
    :goto_31
    return-object v1
.end method

.method private getMarginBottomForOverlayGuide(DLandroid/graphics/Rect;)I
    .registers 6

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 248
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_2b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 249
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2b

    :cond_14
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 251
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p0

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0

    .line 250
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    return p0
.end method

.method private getMarginTopForFloatingWindow(DLandroid/graphics/Rect;)I
    .registers 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 222
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_2c

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 223
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_2c

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 224
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2c

    .line 227
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->floating_window_container_full_top_margin:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 225
    :cond_2c
    :goto_2c
    iget p0, p3, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private getMarginTopForOverlayGuide(DLandroid/graphics/Rect;)I
    .registers 6

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 235
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    iget p0, p3, Landroid/graphics/Rect;->top:I

    return p0

    :cond_e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 237
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p3

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    if-nez p3, :cond_24

    .line 238
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    .line 239
    :cond_24
    :goto_24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p0

    return p0
.end method

.method private initContentAppearAnim(Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 10

    .line 1073
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->overlay_guide_image_margin_top_translate_amin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1075
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->overlay_guide_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v5, 0x0

    .line 1077
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/16 v4, 0x1f4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startTranslateAnimation(Landroid/view/View;IIIILandroid/view/animation/PathInterpolator;)V

    .line 1080
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 1084
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->overlay_guide_text_root_margin_top_translate_amin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1086
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->overlay_guide_text_root_margin_top_translate_amin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v5, 0x64

    .line 1088
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startTranslateAnimation(Landroid/view/View;IIIILandroid/view/animation/PathInterpolator;)V

    .line 1091
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_CONTENT_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method private initFloatingWindowTalkBack()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3b

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_12

    goto :goto_3b

    :cond_12
    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->expand_floating_window_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    const/4 v1, 0x2

    .line 399
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 403
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private initFloatingWindowUI()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_window_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    .line 348
    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_window_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$2;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initFloatingWindowTalkBack()V

    return-void
.end method

.method private initFloatingWindowViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 8

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowDrawableIdList:Ljava/util/List;

    if-eqz v0, :cond_8c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    if-eqz v0, :cond_8c

    .line 555
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    if-eqz v0, :cond_8c

    .line 556
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    if-eqz v0, :cond_8c

    .line 557
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_8c

    .line 562
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 565
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    .line 566
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 565
    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createFloatingWindowItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 567
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    const/4 v2, 0x0

    move v3, v2

    .line 570
    :goto_4a
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5c

    .line 571
    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createFloatingWindowItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 572
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 574
    :cond_5c
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 577
    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createFloatingWindowItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 578
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_6c
    new-instance p1, Lcom/transsion/camera/app/ui/sellingpointguide/SellingPointViewPagerAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/sellingpointguide/SellingPointViewPagerAdapter;-><init>(Ljava/util/List;)V

    .line 582
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 583
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    .line 584
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/transsion/camera/app/ui/SellingPointGuideUI$4;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$4;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    .line 558
    :cond_8c
    :goto_8c
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[initFloatingWindowViewPager] return, selling point guide config is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initOverlayGuidePageIndicator()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 494
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 495
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 498
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 500
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v1, v4, :cond_33

    .line 501
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->overlay_guide_page_indicator_dot_interval:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 504
    :cond_33
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->overlay_guide_page_indicator_dot_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 506
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->overlay_guide_page_indicator_dot_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 508
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v1, :cond_55

    goto :goto_56

    :cond_55
    move v5, v0

    .line 509
    :goto_56
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 510
    sget v3, Lcom/transsion/camera/R$drawable;->overlay_guide_page_indicator_dot_color:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_66
    return-void
.end method

.method private initOverlayGuideUI()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->overlay_guide_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->overlay_guide_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideContainer:Landroid/widget/LinearLayout;

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->close_overlay_guide_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    .line 434
    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->overlay_guide_viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->overlay_guide_page_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->mode_switch_icon_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchIconRoot:Landroid/widget/FrameLayout;

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->mode_switch_icon_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchText:Landroid/widget/TextView;

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->mode_switch_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchIcon:Landroid/widget/ImageView;

    .line 449
    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initOverlayGuideViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 8

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideDrawableIdList:Ljava/util/List;

    if-eqz v0, :cond_9a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    if-eqz v0, :cond_9a

    .line 671
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    if-eqz v0, :cond_9a

    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    if-eqz v0, :cond_9a

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_9a

    .line 678
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTextRootList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 686
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 687
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    .line 688
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 687
    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createOverlayGuideItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 689
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    const/4 v2, 0x0

    move v3, v2

    .line 692
    :goto_63
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 693
    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createOverlayGuideItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 694
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 696
    :cond_75
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 699
    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->createOverlayGuideItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 700
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_85
    new-instance p1, Lcom/transsion/camera/app/ui/sellingpointguide/SellingPointViewPagerAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/sellingpointguide/SellingPointViewPagerAdapter;-><init>(Ljava/util/List;)V

    .line 704
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/transsion/camera/app/ui/SellingPointGuideUI$6;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$6;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    .line 674
    :cond_9a
    :goto_9a
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[initOverlayGuideViewPager] return, selling point guide config is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createOverlayGuideItem$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 647
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x3e8

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    goto :goto_23

    .line 656
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_23

    const-wide/16 v0, 0xbb8

    .line 657
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23

    .line 650
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_23

    .line 651
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initFloatingWindowUI$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 350
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 353
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_10

    goto :goto_18

    .line 359
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPopSettingShow:Z

    if-eqz p1, :cond_15

    return p2

    .line 362
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->switchFloatingWindowToOverlayGuide()V

    :goto_18
    return p2
.end method

.method private synthetic lambda$initOverlayGuideUI$2(Landroid/view/View;)V
    .registers 3

    .line 435
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 436
    const-string/jumbo p1, "value_none_guide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 438
    iget p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->calculateActualViewPagerPos(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    .line 439
    :cond_18
    iget p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    .line 440
    :goto_1a
    const-string v0, "0"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$initOverlayGuideUI$3(Landroid/view/View;)V
    .registers 6

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_a8

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_a8

    .line 454
    :cond_c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsCameraSwitching:Z

    if-eqz p1, :cond_18

    .line 455
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "overlay guide switch mode, return for camera is switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 460
    iget p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->calculateActualViewPagerPos(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    .line 461
    :cond_27
    iget p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    .line 463
    :goto_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    if-eqz v0, :cond_a8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a8

    .line 464
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 465
    const-string/jumbo v0, "value_none_guide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 469
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 471
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 472
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 473
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "not support this mode, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_78
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 479
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_8a

    :cond_89
    move-object v1, v2

    .line 481
    :goto_8a
    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 482
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 483
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->switchModeByOverlayGuide(Ljava/lang/String;)V

    goto :goto_a3

    .line 485
    :cond_9e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera(Ljava/lang/String;)V

    .line 488
    :cond_a3
    :goto_a3
    const-string v0, "1"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;I)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 160
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eq v0, p1, :cond_9

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$updateLayoutParamsWithAnim$5(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 858
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 6

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_38

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 754
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 755
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 756
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 757
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 753
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz v2, :cond_2d

    goto :goto_35

    .line 759
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$color;->overlay_guide_root_background_color:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 758
    :goto_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 762
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    .line 763
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz v1, :cond_43

    sget v1, Lcom/transsion/camera/R$drawable;->ic_close_guide_lowlight:I

    goto :goto_45

    .line 764
    :cond_43
    sget v1, Lcom/transsion/camera/R$drawable;->ic_close_guide_normal:I

    .line 763
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 767
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    move v0, v1

    .line 768
    :goto_4e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_79

    .line 769
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 770
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$color;->overlay_guide_low_light_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_73

    .line 771
    :cond_6b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$color;->overlay_guide_title_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 769
    :goto_73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 775
    :cond_79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a8

    .line 776
    :goto_7d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a8

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayContentTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 778
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$color;->overlay_guide_low_light_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_a2

    .line 779
    :cond_9a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$color;->overlay_guide_content_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 777
    :goto_a2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 783
    :cond_a8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_c9

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchText:Landroid/widget/TextView;

    if-eqz v1, :cond_c9

    .line 785
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz v1, :cond_b7

    sget v1, Lcom/transsion/camera/R$drawable;->ic_mode_switch_lowlight:I

    goto :goto_b9

    :cond_b7
    sget v1, Lcom/transsion/camera/R$drawable;->ic_mode_switch:I

    .line 784
    :goto_b9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchText:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    if-eqz p0, :cond_c5

    const/high16 p0, -0x1000000

    goto :goto_c6

    :cond_c5
    const/4 p0, -0x1

    :goto_c6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c9
    return-void
.end method

.method private showOverlayGuide()V
    .registers 8

    .line 1097
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPrivacyModeEnable:Z

    if-eqz v1, :cond_c

    .line 1098
    sget-object v0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showOverlayGuide] return, mIsPrivacyModeEnable is true"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1102
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9c

    .line 1103
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ROOT_SHOW_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 1109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTextRootList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1110
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayImageViewList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1112
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTextRootList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1113
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1114
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initContentAppearAnim(Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    .line 1117
    :cond_5a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1118
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ICON_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    goto :goto_75

    .line 1122
    :cond_6f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuidePageIndicator:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    :goto_75
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ICON_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 1128
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModeSwitchIconRoot:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ICON_SHOW_ANIM_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 1133
    const-string/jumbo v1, "value_overlay_guide"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x16b

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideTwinkleGuide()V

    :cond_9c
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V
    .registers 9

    if-nez p1, :cond_a

    .line 1027
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startAlphaAnimation] return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x2

    .line 1031
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1032
    const-string p2, "alpha"

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 1033
    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 1034
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1035
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1036
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1040
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/transsion/camera/app/ui/SellingPointGuideUI$8;

    invoke-direct {p4, p0, p3, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$8;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;FLandroid/view/View;)V

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1049
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1050
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startTranslateAnimation(Landroid/view/View;IIIILandroid/view/animation/PathInterpolator;)V
    .registers 8

    .line 1055
    const-string/jumbo v0, "topMargin"

    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 1056
    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 1057
    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    int-to-long p3, p4

    .line 1058
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1059
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1060
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1061
    iget-object p3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda6;

    invoke-direct {p4, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1068
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateLayoutParams(D)V
    .registers 7

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-nez v0, :cond_c

    .line 811
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateLayoutParams] return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 816
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 818
    iget v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowMarginTop:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 819
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->floating_window_container_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_35

    .line 822
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 823
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_window_container_full_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_35
    const/4 v1, 0x5

    .line 825
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 826
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_window_container_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 829
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateOverlayGuideLayoutByPreviewRatio(D)V

    return-void
.end method

.method private updateLayoutParamsWithAnim(IID)V
    .registers 9

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-nez v0, :cond_c

    .line 836
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateLayoutParamsWithAnim] return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 841
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    .line 843
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 844
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 845
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_window_container_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 847
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_window_container_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_window_container_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr p2, v1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 847
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 853
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p2, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 855
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 856
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 857
    new-instance p2, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 861
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 863
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateOverlayGuideLayoutByPreviewRatio(D)V

    return-void
.end method

.method private updateOverlayGuideLayoutByPreviewRatio(D)V
    .registers 10

    .line 867
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    goto/16 :goto_c1

    .line 874
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 875
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideContainer:Landroid/widget/LinearLayout;

    .line 876
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 877
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    .line 878
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 880
    iget v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginTop:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 881
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 883
    :cond_2b
    iget v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginBottom:I

    if-eq v3, v4, :cond_31

    .line 884
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_31
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v3

    if-eqz v3, :cond_b1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 887
    invoke-static {p1, p2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v5

    if-nez v5, :cond_a0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 888
    invoke-static {p1, p2, v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_a0

    :cond_4b
    const-wide v5, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 892
    invoke-static {p1, p2, v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 893
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 894
    invoke-virtual {p2, v5, v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 895
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 896
    invoke-virtual {p2, v5, v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 897
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/R$dimen;->overlay_guide_close_icon_margin_top:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b1

    .line 899
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 900
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight(D)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    .line 901
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/R$dimen;->overlay_guide_close_icon_margin_top:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b1

    :cond_a0
    :goto_a0
    const/4 p1, 0x0

    .line 889
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 890
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->overlay_guide_close_icon_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 905
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCloseOverlayGuideIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 870
    :cond_c1
    :goto_c1
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateOverlayGuideLayout return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 7

    .line 791
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 793
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getMarginTopForFloatingWindow(DLandroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowMarginTop:I

    .line 794
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getMarginTopForOverlayGuide(DLandroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginTop:I

    .line 795
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getMarginBottomForOverlayGuide(DLandroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideMarginBottom:I

    .line 797
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3c

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRatio:D

    invoke-static {v2, v3, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 798
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRatio:D

    iget-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getMarginTopForFloatingWindow(DLandroid/graphics/Rect;)I

    move-result v2

    .line 799
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getMarginTopForFloatingWindow(DLandroid/graphics/Rect;)I

    move-result v3

    .line 800
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateLayoutParamsWithAnim(IID)V

    goto :goto_3f

    .line 802
    :cond_3c
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateLayoutParams(D)V

    .line 805
    :goto_3f
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRatio:D

    .line 806
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getGuideStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_selling_point_guide_status"

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFloatingWindow()V
    .registers 3

    .line 1141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-nez v0, :cond_c

    .line 1142
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hideFloatingWindow] return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1145
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public hideOverlayGuide()V
    .registers 6

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_c

    .line 1153
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hideOverlayGuide] return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1156
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_selling_point_guide_show"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method public hideOverlayGuideWithAnim()V
    .registers 10

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_c

    .line 1164
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hideOverlayGuideWithAnim] return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1167
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideRoot:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->OVERLAY_GUIDE_ROOT_HIDE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xfa

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V

    .line 1173
    iget-object p0, v2, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x16c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1174
    iget-object p0, v2, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_selling_point_guide_show"

    const-string v3, "false"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 297
    sget v0, Lcom/transsion/camera/R$layout;->selling_point_guide_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initFloatingWindowUI()V

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initOverlayGuideUI()V

    .line 302
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initOverlayGuidePageIndicator()V

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initFloatingWindowViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initOverlayGuideViewPager(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 306
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRatio:D

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateLayoutParams(D)V

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    .line 310
    const-string/jumbo p2, "value_floating_window"

    if-eqz p1, :cond_2c

    const-string/jumbo v0, "value_none_guide"

    goto :goto_2d

    :cond_2c
    move-object v0, p2

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 311
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_56

    if-nez p1, :cond_52

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "key_selling_point_guide_show"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindowWithAnim()V

    goto :goto_59

    .line 317
    :cond_56
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 321
    :cond_59
    :goto_59
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsLowLight:Z

    .line 322
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->ringScreenLightUpdateUI()V

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_50

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4d

    const/16 v2, 0xb

    if-eq p1, v2, :cond_4a

    const/16 v2, 0xc

    if-eq p1, v2, :cond_47

    const/16 v2, 0x17

    if-eq p1, v2, :cond_44

    const/16 v2, 0x18

    if-eq p1, v2, :cond_41

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_3e

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_3b

    const/16 v2, 0xe9

    if-eq p1, v2, :cond_38

    const/16 v2, 0xea

    if-eq p1, v2, :cond_35

    const/16 v2, 0xed

    if-eq p1, v2, :cond_32

    const/16 v0, 0xee

    if-eq p1, v0, :cond_2f

    return-void

    .line 1190
    :cond_2f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSuperNightLiteAnimBegin:Z

    return-void

    .line 1187
    :cond_32
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSuperNightLiteAnimBegin:Z

    return-void

    .line 1208
    :cond_35
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsQuickVideoBegin:Z

    return-void

    .line 1205
    :cond_38
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsQuickVideoBegin:Z

    return-void

    .line 1214
    :cond_3b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPopSettingShow:Z

    return-void

    .line 1211
    :cond_3e
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPopSettingShow:Z

    return-void

    .line 1202
    :cond_41
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsZoomBegin:Z

    return-void

    .line 1199
    :cond_44
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsZoomBegin:Z

    return-void

    .line 1196
    :cond_47
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSelfTimerBegin:Z

    return-void

    .line 1193
    :cond_4a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSelfTimerBegin:Z

    return-void

    .line 1184
    :cond_4d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsCameraSwitching:Z

    return-void

    .line 1181
    :cond_50
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsCameraSwitching:Z

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 1223
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPrivacyModeEnable:Z

    .line 1224
    const-string/jumbo p2, "value_floating_window"

    const-string/jumbo v0, "value_none_guide"

    if-eqz p1, :cond_37

    .line 1225
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "0"

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 1226
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsHideByPrivacyMode:Z

    .line 1227
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 1228
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void

    .line 1229
    :cond_20
    const-string/jumbo p1, "value_overlay_guide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1230
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuide()V

    .line 1231
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;)V

    return-void

    .line 1235
    :cond_37
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSuperNightLiteAnimBegin:Z

    if-nez p1, :cond_61

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSelfTimerBegin:Z

    if-nez p1, :cond_61

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsZoomBegin:Z

    if-nez p1, :cond_61

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsQuickVideoBegin:Z

    if-nez p1, :cond_61

    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 1236
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1237
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    const/4 p1, 0x0

    .line 1238
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsHideByPrivacyMode:Z

    .line 1239
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindow()V

    :cond_61
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSuperNightLiteAnimBegin:Z

    .line 330
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsSelfTimerBegin:Z

    .line 331
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsZoomBegin:Z

    .line 332
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsQuickVideoBegin:Z

    .line 333
    const-string/jumbo v0, "value_none_guide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value_overlay_guide"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    return-void

    .line 335
    :cond_1d
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsHideByPrivacyMode:Z

    if-nez v1, :cond_31

    const-string/jumbo v1, "value_floating_window"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    :cond_31
    return-void
.end method

.method public resume()V
    .registers 3

    .line 341
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsHideByPrivacyMode:Z

    if-nez v0, :cond_17

    const-string/jumbo v0, "value_none_guide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value_floating_window"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindow()V

    :cond_17
    return-void
.end method

.method public setAllModeResources(Ljava/util/List;)V
    .registers 15

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$array;->selling_point_entry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    array-length v6, v0

    const/4 v7, 0x0

    :goto_27
    if-ge v7, v6, :cond_80

    aget-object v8, v0, v7

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/app/common/FeatureResource;

    .line 273
    iget-object v11, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v11}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v11

    if-eqz v11, :cond_55

    const-string v11, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    iget-object v12, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 274
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 275
    sget-object v10, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v11, "[setAllModeResources] in secure camera, remove ai art museum mode resources"

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2f

    .line 278
    :cond_55
    iget-object v11, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 279
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v11, v10, Lcom/transsion/camera/app/common/FeatureResource;->mSellingPointTitle:Ljava/lang/String;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v11, v10, Lcom/transsion/camera/app/common/FeatureResource;->mSellingPointContent:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget v11, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFloatingWindowDrawableId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget v10, v10, Lcom/transsion/camera/app/common/FeatureResource;->mOverlayGuideDrawableId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 289
    :cond_80
    iput-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    .line 290
    iput-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    .line 291
    iput-object v3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    .line 292
    iput-object v4, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowDrawableIdList:Ljava/util/List;

    .line 293
    iput-object v5, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideDrawableIdList:Ljava/util/List;

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    return-void
.end method

.method public setFloatingWindowClickIconId(Ljava/lang/String;)V
    .registers 3

    .line 217
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method public setGuideStatus(Ljava/lang/String;)V
    .registers 5

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    const-string v2, "key_selling_point_guide_status"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOverlayGuideClickIconId(Ljava/lang/String;)V
    .registers 6

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v0

    .line 193
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_19

    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 194
    :goto_19
    iget v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    if-lt v2, v0, :cond_53

    if-le v2, v1, :cond_20

    goto :goto_53

    .line 201
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 203
    iget p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_38

    .line 204
    :cond_36
    iget p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    .line 202
    :goto_38
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "^"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2a

    .line 201
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void

    .line 195
    :cond_53
    :goto_53
    sget-object p1, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setOverlayGuideClickIconId] return, mCurrentOverlayGuidePagerPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", minPos = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxPos = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setOverlayGuideClickIconId(Ljava/lang/String;I)V
    .registers 5

    if-ltz p2, :cond_31

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_b

    goto :goto_31

    .line 212
    :cond_b
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    .line 213
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "^"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2a

    .line 212
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void

    .line 209
    :cond_31
    :goto_31
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[setOverlayGuideClickIconId] return, position = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showFloatingWindow()V
    .registers 5

    .line 947
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowDrawableIdList:Ljava/util/List;

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    if-eqz v0, :cond_78

    .line 948
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    if-eqz v0, :cond_78

    .line 949
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    if-eqz v0, :cond_78

    .line 950
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_78

    .line 955
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-nez v0, :cond_35

    .line 956
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindow] return, mFloatingWindowRoot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 960
    :cond_35
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPrivacyModeEnable:Z

    if-eqz v0, :cond_41

    .line 961
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindow] return, mIsPrivacyModeEnable is true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 965
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 966
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindow] return, current mode do not show floating window"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 970
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_69

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 972
    const-string/jumbo v0, "value_floating_window"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 974
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 975
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 951
    :cond_78
    :goto_78
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindow] return, selling point guide config is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showFloatingWindowWithAnim()V
    .registers 7

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowDrawableIdList:Ljava/util/List;

    if-eqz v0, :cond_a1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointTitleList:Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 980
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointContentList:Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 981
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mSellingPointModeList:Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 982
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_a1

    .line 987
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    if-nez v0, :cond_35

    .line 988
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindowWithAnim] return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 992
    :cond_35
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsPrivacyModeEnable:Z

    if-eqz v0, :cond_41

    .line 993
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindowWithAnim] return, mIsPrivacyModeEnable is true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 997
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 998
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindowWithAnim] return, current mode do not show floating window"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1002
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a0

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mFloatingWindowRoot:Lcom/transsion/camera/app/ui/sellingpointguide/FloatingWindowRoot;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_aa

    .line 1004
    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1006
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1008
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1009
    new-instance v1, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1016
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1018
    const-string/jumbo v0, "value_floating_window"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1020
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a0
    return-void

    .line 983
    :cond_a1
    :goto_a1
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showFloatingWindowWithAnim] return, selling point guide config is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :array_aa
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchFloatingWindowToOverlayGuide()V
    .registers 5

    .line 919
    const-string/jumbo v0, "value_none_guide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value_floating_window"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 920
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[switchFloatingWindowToOverlayGuide] return, current status is not floating window"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 924
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mIsCameraSwitching:Z

    if-eqz v0, :cond_24

    .line 925
    sget-object p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[switchFloatingWindowToOverlayGuide] return, camera is switching"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 929
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showOverlayGuide()V

    .line 930
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 932
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->enableInfiniteLoop()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 933
    iget v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->calculateActualViewPagerPos(I)I

    move-result v0

    goto :goto_39

    .line 934
    :cond_37
    iget v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentFloatingViewPagerPosition:I

    :goto_39
    iput v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    .line 936
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayTitleTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 937
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 939
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mOverlayGuideViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentOverlayGuidePagerPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 941
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 943
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_7

    .line 912
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 914
    :cond_7
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateCurrentModeName(Ljava/lang/String;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method
