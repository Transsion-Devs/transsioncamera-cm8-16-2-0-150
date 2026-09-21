.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;
.source "SourceFile"


# instance fields
.field private final HIDE_ELEMENT_DURATION:I

.field private final SHOW_ELEMENT_DELAY:I

.field private final SHOW_ELEMENT_DURATION:I

.field private final TRANSLATE_TAB_DURATION:I

.field private mCollapsedTabContainer:Landroid/widget/LinearLayout;

.field private mCollapsedTabTextView:Landroid/widget/TextView;

.field private mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mExpandArrow:Landroid/widget/ImageView;

.field private final mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverTabContainer:Landroid/view/ViewGroup;

.field private mHoverTextView:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private final mScaleX:F

.field private mScrollerBackground:Landroid/widget/FrameLayout;

.field private mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mScrollerRulerViewWidth:I

.field private mScrollerTranslationX:I

.field private mSelectedColor:I

.field private final mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

.field private mTabMenuContainer:Landroid/view/ViewGroup;

.field private mTabMenuTopUI:Landroid/widget/FrameLayout;

.field private mUnSelectedColor:I

.field private final videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;


# direct methods
.method public static synthetic $r8$lambda$-0ICdIBR5Xox6-akCdyxARqDOnY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->startExpandToCollapseAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$26V1C_C73uV-afliWOYdD9rd3bA(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$updateTabSwitchLayout$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8m17R4GNd88DDRKJJywBrGJURbc(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$initClickListener$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9VoqzD0KABRUlKvNpy5UlCuaV40(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$expandScrollerView$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A-ETufov23poL4POX2PAcMTuQks(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleExpandToCollapse(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AincWUfMpGXKD-V_aHuDGukamY8(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$updateScrollerBarParams$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$C_ZNSvjxVhuDaDJ87q7SFY2QVpU(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleNoEffectToExpandScroller(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fjf7-yyjZ3JuxJwdNH2hJDYNZF4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleNoEffectToCollapseScroller(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$K4Q03Ry9Jbn3q9OovMDNpNaAsg4(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 316
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$M4bDifh1RQ8R5kR4OH5MpX5mbvg(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleExpandScrollerToNoEffect(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ofx6HVM7mscyhdrCy-rwxu7Sftw(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$setupEntryView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SEKr3-7miEGJyObClqX0teE_Rlc(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$updateCollapsedTabLayout$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPUSmsgldIh-pV3fK8EFdWDvllY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleCollapseScrollerToNoEffect(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_3bzHZYnpsfJawl4VlspmlpdG90(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$updateTopUILayout$7(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$butY7011hsovAvyHZBHcpkM9Z8g(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->handleCollapseScrollerToExpand(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dptVHQ8UGjukCWFobRUu0Xzn0y8(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->startCollapsedToNoEffectAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$hqp2WbI6GW9GoCbrqMLumJXYJW0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$initSettingUI$0(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ly5vmaLo7_m9Gct_YKoZVqQhCBY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$updateTabSwitchLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMcl81iWcHNM_mVv7DVUsODOZLk(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doExpandToNoEffectAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$qGFG7jc_mbkah2A-0QgBcEz9KOs(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$collapseScrollerView$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ttukbG5XvWxmP0Fr623pGMTVfJs(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$initClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zugtD05nvfcEO-UE4kl1DG2Kz6w(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->lambda$expandScrollerView$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedTabContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpandArrow(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mExpandArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoverTabContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerBackground(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMenuComponentVisible(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateMenuComponentVisible()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 7

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;-><init>(Landroid/content/res/Resources;)V

    const/16 v0, 0xc8

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->SHOW_ELEMENT_DURATION:I

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->HIDE_ELEMENT_DURATION:I

    const/16 v0, 0x96

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->SHOW_ELEMENT_DELAY:I

    const/16 v0, 0x15e

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->TRANSLATE_TAB_DURATION:I

    const v0, 0x3f19999a    # 0.6f

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScaleX:F

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    .line 85
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    return-void
.end method

.method private collapseScrollerView(Z)V
    .registers 25

    move-object/from16 v0, p0

    .line 663
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 664
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 666
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 669
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_fading_edge_length:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 670
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v6, v2

    const/4 v7, 0x2

    .line 672
    new-array v8, v7, [I

    .line 673
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 674
    new-array v8, v7, [I

    .line 675
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 676
    new-array v9, v7, [I

    .line 677
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 678
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/4 v12, 0x0

    aget v13, v8, v12

    add-int v14, v13, v3

    int-to-float v14, v14

    sub-float/2addr v10, v14

    int-to-float v14, v3

    div-float/2addr v14, v11

    add-float/2addr v10, v14

    .line 682
    aget v9, v9, v12

    sub-int/2addr v9, v13

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    .line 683
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v13, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    aget v8, v8, v12

    move v15, v5

    int-to-double v4, v8

    sub-double/2addr v13, v4

    const-wide v4, 0x3fd9999980000000L    # 0.3999999761581421

    mul-double/2addr v13, v4

    double-to-int v4, v13

    sub-int/2addr v9, v4

    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerTranslationX:I

    .line 684
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCenterPointX()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_102

    .line 687
    new-array v8, v7, [F

    fill-array-data v8, :array_138

    .line 688
    const-string v9, "alpha"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    new-array v8, v7, [F

    fill-array-data v8, :array_140

    .line 689
    const-string v9, "scaleX"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    int-to-float v1, v1

    int-to-float v2, v2

    new-array v8, v7, [F

    aput v1, v8, v12

    aput v2, v8, v4

    .line 690
    const-string v1, "scaleWidth"

    invoke-static {v1, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerTranslationX:I

    filled-new-array {v12, v1}, [I

    move-result-object v1

    .line 691
    const-string/jumbo v2, "translationX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    .line 692
    const-string v2, "containerWidth"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    const-string v1, "fadingEdgeLength"

    filled-new-array {v15, v6}, [I

    move-result-object v2

    .line 693
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    new-array v1, v7, [F

    aput v5, v1, v12

    aput v10, v1, v4

    .line 694
    const-string v2, "scrollerOffset"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    filled-new-array/range {v16 .. v22}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 687
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 696
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 697
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 699
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 721
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$9;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$9;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 728
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 730
    :cond_102
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 731
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v2

    invoke-virtual {v1, v2, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 732
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const v11, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 733
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v2, v10

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 734
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 736
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 737
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 738
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerTranslationX:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    nop

    :array_138
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_140
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private doExpandToCollapseAnimation()V
    .registers 15

    .line 745
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 746
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    .line 748
    new-array v3, v2, [I

    .line 749
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 751
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    sget v3, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 752
    new-array v3, v2, [I

    .line 753
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 754
    new-array v4, v2, [I

    .line 755
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 756
    new-array v5, v2, [I

    .line 757
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 759
    aget v3, v3, v6

    aget v4, v4, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 761
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    aget v5, v5, v6

    int-to-float v7, v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    new-array v3, v2, [F

    aput v7, v3, v6

    const/4 v7, 0x1

    aput v5, v3, v7

    const-string/jumbo v5, "translationX"

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x15e

    .line 763
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 764
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$10;

    invoke-direct {v4, p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$10;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 782
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v4, v2, [F

    fill-array-data v4, :array_10e

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0xc8

    .line 783
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 784
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 785
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$11;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$11;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 803
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 804
    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v11, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mSelectedColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "textColor"

    invoke-static {v4, v12, v10, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0x64

    .line 805
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 807
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v11, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 808
    new-array v11, v2, [F

    fill-array-data v11, :array_116

    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 810
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 811
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 813
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v12, v2, [F

    fill-array-data v12, :array_11e

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    .line 814
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 815
    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 816
    iget-object v12, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 817
    new-instance v12, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;

    invoke-direct {v12, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$12;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 832
    iget-object v12, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    new-array v13, v2, [F

    fill-array-data v13, :array_126

    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v12, 0x12c

    .line 833
    invoke-virtual {v5, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 834
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 835
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x6

    .line 837
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v3, v8, v6

    aput-object v10, v8, v7

    aput-object v1, v8, v2

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    const/4 v1, 0x5

    aput-object v11, v8, v1

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 842
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$13;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 857
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_10e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_116
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_126
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doExpandToNoEffectAnimation()V
    .registers 15

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(Z)V

    .line 867
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 869
    new-array v3, v2, [I

    .line 870
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 872
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    .line 873
    new-array v4, v2, [I

    .line 874
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 876
    new-array v3, v2, [I

    .line 877
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 879
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    sget v5, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 880
    new-array v5, v2, [I

    .line 881
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 882
    new-array v6, v2, [I

    .line 883
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 885
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 886
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    .line 887
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mSelectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 886
    const-string v10, "textColor"

    invoke-static {v7, v10, v8, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x64

    .line 888
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 890
    aget v5, v5, v0

    aget v6, v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 891
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    aget v3, v3, v0

    int-to-float v8, v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    new-array v5, v2, [F

    aput v8, v5, v0

    const/4 v8, 0x1

    aput v3, v5, v8

    const-string/jumbo v3, "translationX"

    invoke-static {v6, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x15e

    .line 893
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 894
    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$14;

    invoke-direct {v5, p0, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$14;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 912
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v5, v2, [F

    fill-array-data v5, :array_110

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0xc8

    .line 913
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 914
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 915
    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$15;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$15;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 933
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v11, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 934
    new-array v11, v2, [F

    fill-array-data v11, :array_118

    invoke-static {v5, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 935
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 936
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 938
    iget-object v11, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v12, v2, [F

    fill-array-data v12, :array_120

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    .line 939
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 940
    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 941
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    new-instance v9, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$16;

    invoke-direct {v9, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$16;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v11, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 957
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-array v10, v2, [F

    fill-array-data v10, :array_128

    invoke-static {v9, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 958
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v9, 0x6

    .line 960
    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v0

    aput-object v5, v9, v8

    aput-object v4, v9, v2

    const/4 v0, 0x3

    aput-object v7, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v11, v9, v0

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 966
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$17;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$17;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 974
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_110
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_118
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_120
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_128
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private doNoEffectToCollapseAnimation()V
    .registers 6

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_3a

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 993
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_42

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 994
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 995
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$18;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$18;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1010
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1011
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1012
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doNoEffectToExpandAnimation()V
    .registers 18

    move-object/from16 v0, p0

    .line 1028
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 1030
    new-array v3, v2, [I

    .line 1031
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1032
    new-array v1, v2, [I

    .line 1033
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1035
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    const/4 v6, 0x0

    aget v1, v1, v6

    int-to-float v1, v1

    sub-float/2addr v5, v1

    aget v1, v3, v6

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 1037
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1038
    new-array v4, v2, [I

    .line 1039
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1041
    aget v4, v4, v6

    aget v3, v3, v6

    sub-int/2addr v4, v3

    int-to-float v3, v4

    .line 1043
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    .line 1045
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v7, v3

    new-array v3, v2, [F

    aput v5, v3, v6

    const/4 v5, 0x1

    aput v7, v3, v5

    .line 1043
    const-string/jumbo v7, "translationX"

    invoke-static {v4, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v7, 0x15e

    .line 1046
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1047
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;

    invoke-direct {v4, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$19;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1065
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v4, v2, [F

    fill-array-data v4, :array_134

    const-string v7, "alpha"

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x96

    .line 1066
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v10, 0xc8

    .line 1067
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1068
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1069
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$20;

    invoke-direct {v4, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$20;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1089
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v12, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1090
    new-instance v12, Landroid/animation/ArgbEvaluator;

    invoke-direct {v12}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v13, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mSelectedColor:I

    .line 1091
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v14, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    if-eqz v14, :cond_aa

    const/high16 v14, -0x1000000

    goto :goto_ac

    :cond_aa
    iget v14, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    :goto_ac
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    .line 1090
    const-string v14, "textColor"

    invoke-static {v4, v14, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v12, 0x64

    .line 1092
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1094
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v13, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1095
    new-array v13, v2, [F

    fill-array-data v13, :array_13c

    invoke-static {v12, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1096
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1097
    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1098
    invoke-virtual {v13, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1100
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v15, v2, [F

    fill-array-data v15, :array_144

    invoke-static {v14, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 1101
    invoke-virtual {v14, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1102
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1103
    new-instance v15, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$21;

    invoke-direct {v15, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$21;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1117
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move/from16 v16, v5

    new-array v5, v2, [F

    fill-array-data v5, :array_14c

    invoke-static {v15, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1118
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1119
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1120
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1122
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x6

    .line 1123
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v3, v8, v6

    aput-object v1, v8, v16

    aput-object v13, v8, v2

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v14, v8, v1

    const/4 v1, 0x5

    aput-object v5, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1128
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$22;

    invoke-direct {v1, v0, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$22;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1144
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_134
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_13c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_144
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_14c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private expandScrollerView()V
    .registers 11

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width_animator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 458
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->collapse_scroller_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 459
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_fading_edge_length:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 460
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v4, v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v5, 0x2

    .line 462
    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    aput v0, v6, v1

    .line 463
    const-string v0, "scaleWidth"

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v6, v5, [F

    fill-array-data v6, :array_c2

    .line 464
    const-string v8, "alpha"

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    filled-new-array {v0, v6}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v8, 0x12c

    .line 467
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 473
    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$2;

    invoke-direct {v6, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    new-array v6, v5, [F

    fill-array-data v6, :array_ca

    .line 482
    const-string v8, "scaleX"

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerTranslationX:I

    filled-new-array {v8, v7}, [I

    move-result-object v8

    .line 483
    const-string/jumbo v9, "translationX"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    iget v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerViewWidth:I

    filled-new-array {v2, v9}, [I

    move-result-object v2

    .line 484
    const-string v9, "containerWidth"

    invoke-static {v9, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v9, "fadingEdgeLength"

    filled-new-array {v4, v3}, [I

    move-result-object v3

    .line 485
    invoke-static {v9, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    filled-new-array {v6, v8, v2, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 481
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 488
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 505
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 513
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 514
    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 515
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_c2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleCollapseScrollerToExpand(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->startCollapsedToExpandAnimation()V

    .line 452
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->expandScrollerView()V

    return-void
.end method

.method private handleCollapseScrollerToNoEffect(Z)V
    .registers 3

    const/4 p1, 0x0

    .line 627
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    .line 628
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleExpandScrollerToNoEffect(Z)V
    .registers 3

    const/4 p1, 0x0

    .line 861
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    .line 862
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleExpandToCollapse(Z)V
    .registers 3

    const/4 p1, 0x0

    .line 653
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    .line 654
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private handleNoEffectToCollapseScroller(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 978
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    const/4 v1, 0x1

    .line 979
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(Z)V

    .line 980
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->resetScrollerRulerView()V

    .line 981
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->collapseScrollerView(Z)V

    if-eqz p1, :cond_14

    .line 983
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doNoEffectToCollapseAnimation()V

    return-void

    .line 985
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateMenuComponentVisible()V

    .line 986
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    return-void
.end method

.method private handleNoEffectToExpandScroller(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1016
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateCollapsedTabLayout(Ljava/lang/Runnable;)V

    .line 1018
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->resetScrollerRulerView()V

    if-eqz p1, :cond_11

    .line 1020
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doNoEffectToExpandAnimation()V

    return-void

    .line 1022
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateMenuComponentVisible()V

    const/4 p1, 0x1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->setEnable(Z)V

    return-void
.end method

.method private initClickListener()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$collapseScrollerView$12(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 700
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 701
    const-string v1, "scaleWidth"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 702
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    .line 704
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 705
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 707
    const-string v0, "scrollerOffset"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 708
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 710
    const-string v0, "fadingEdgeLength"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 713
    const-string v0, "containerWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 715
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$expandScrollerView$10(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 469
    const-string v0, "scaleWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 470
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerParamsForAnim(FF)V

    return-void
.end method

.method private synthetic lambda$expandScrollerView$11(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 492
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 493
    const-string v1, "scaleX"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 494
    const-string v2, "containerWidth"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 495
    const-string v3, "fadingEdgeLength"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 496
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 497
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 499
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 500
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$initClickListener$2(Landroid/view/View;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1b

    .line 186
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->isSameState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private synthetic lambda$initClickListener$3(Landroid/view/View;)V
    .registers 3

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 194
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    return-void
.end method

.method private synthetic lambda$initSettingUI$0(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic lambda$setupEntryView$1()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_video_face_beauty_makeup_menu_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    .line 171
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->getCurrentSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    .line 172
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->getCurrentState()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$updateCollapsedTabLayout$9(Ljava/lang/Runnable;)V
    .registers 2

    .line 446
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTopUILayout(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateScrollerBarParams$8()V
    .registers 2

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 286
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateTabSwitchLayout$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 291
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMargin(I)V

    return-void
.end method

.method private synthetic lambda$updateTopUILayout$7(Ljava/lang/Runnable;)V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToCurrentItem()V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateScrollerBarParams()V

    if-eqz p1, :cond_17

    .line 333
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method private resetScrollerRulerView()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 345
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerViewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->resetScrollerParams()V

    return-void
.end method

.method private startCollapsedToExpandAnimation()V
    .registers 15

    .line 519
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 520
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCurrentSelectTabSwitch:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 522
    new-array v3, v2, [I

    .line 523
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 524
    new-array v4, v2, [I

    .line 525
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 527
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-float v4, v4

    sub-float/2addr v6, v4

    aget v4, v3, v7

    int-to-float v4, v4

    add-float/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    .line 529
    new-array v4, v2, [I

    .line 530
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 531
    aget v4, v4, v7

    aget v3, v3, v7

    sub-int/2addr v4, v3

    .line 533
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    .line 534
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    int-to-float v4, v4

    add-float/2addr v6, v4

    new-array v4, v2, [F

    aput v5, v4, v7

    const/4 v5, 0x1

    aput v6, v4, v5

    .line 533
    const-string/jumbo v6, "translationX"

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x15e

    .line 535
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 536
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$4;

    invoke-direct {v4, p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 556
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mSelectedColor:I

    .line 557
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 556
    const-string v8, "textColor"

    invoke-static {v1, v8, v4, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x64

    .line 558
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 560
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-array v6, v2, [F

    fill-array-data v6, :array_11c

    const-string v8, "alpha"

    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x96

    .line 561
    invoke-virtual {v4, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v11, 0xc8

    .line 562
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 563
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 564
    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$5;

    invoke-direct {v6, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    sget v13, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 583
    new-array v13, v2, [F

    fill-array-data v13, :array_124

    invoke-static {v6, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 584
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 585
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mShowElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 588
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-array v10, v2, [F

    fill-array-data v10, :array_12c

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 589
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 590
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 591
    new-instance v10, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$6;

    invoke-direct {v10, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    new-array v13, v2, [F

    fill-array-data v13, :array_134

    invoke-static {v10, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 607
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x6

    .line 610
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v7

    aput-object v6, v10, v5

    aput-object v4, v10, v2

    const/4 v2, 0x3

    aput-object v1, v10, v2

    const/4 v1, 0x4

    aput-object v8, v10, v1

    const/4 v1, 0x5

    aput-object v9, v10, v1

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 615
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_11c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_124
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_12c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_134
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startCollapsedToNoEffectAnimation()V
    .registers 9

    .line 632
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_48

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 634
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    .line 635
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 636
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-array v7, v2, [F

    fill-array-data v7, :array_50

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 637
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHideElementAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 638
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 640
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$8;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 648
    new-array p0, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const/4 v1, 0x1

    aput-object v3, p0, v1

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 649
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_48
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_50
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startExpandToCollapseAnimation()V
    .registers 2

    .line 658
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->doExpandToCollapseAnimation()V

    const/4 v0, 0x1

    .line 659
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->collapseScrollerView(Z)V

    return-void
.end method

.method private updateMenuComponentVisible()V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowCollapsedTab()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowTabBar()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowScrollerBackground()Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowScrollerBar()Z

    move-result v1

    if-eqz v1, :cond_3d

    move v2, v3

    :cond_3d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowCollapsedTab()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4f

    move v1, v3

    goto :goto_50

    :cond_4f
    move v1, v2

    :goto_50
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowTabBar()Z

    move-result v1

    if-eqz v1, :cond_5f

    move v1, v3

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowScrollerBackground()Z

    move-result v1

    if-eqz v1, :cond_6f

    move v1, v3

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowScrollerBar()Z

    move-result v1

    if-eqz v1, :cond_7e

    move v2, v3

    :cond_7e
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->needShowTabBar()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setTabEnable(Z)V

    return-void
.end method

.method private updateScrollerBarParams()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->isSameState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->resetScrollerRulerView()V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method private updateTabSwitchLayout(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private updateTabSwitchLayout(ZLjava/lang/Runnable;)V
    .registers 10

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->isSameState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 276
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_tab_container_internal_margin:I

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_tab_container_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2f

    .line 279
    :cond_21
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_tab_container_internal_margin_with_small_scroller_bar:I

    .line 280
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_tab_container_margin_left_with_small_scroller_bar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_2f
    if-eqz p1, :cond_81

    .line 284
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    filled-new-array {p1, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 285
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCurrentTabInternalMargin()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 290
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    .line 295
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    .line 296
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v3, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 297
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$1;

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;ILandroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {v4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_91

    .line 308
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMarginByResId(I)V

    const/16 p1, 0x50

    .line 309
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 310
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :goto_91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda14;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 126
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 128
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 129
    sget p3, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_setting_layout_ui5:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    .line 130
    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->tab_control_view_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    .line 132
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->top_ui:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuTopUI:Landroid/widget/FrameLayout;

    .line 133
    sget p3, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_top_layout_ui5:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    .line 134
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setTabMenuState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;)V

    .line 140
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 141
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabMenuContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getCollapsedTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 144
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    .line 145
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->getVideoItemUIList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->getSettingTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mExpandArrow:Landroid/widget/ImageView;

    .line 148
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getHoverTabContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    .line 149
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTextView:Landroid/widget/TextView;

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getScrollerViewBackground()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    .line 152
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectListContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 153
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 154
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabViewSwitchContainer()Landroid/widget/LinearLayout;

    move-result-object p3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->createItemView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 157
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->ringScreenLightUpdateUI()V

    .line 159
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->getCurrentSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "key_video_makeup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 376
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setTabSelectCallback(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->getStateTransitionHandler()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->builder()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 98
    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 101
    invoke-virtual {p1, p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 104
    invoke-virtual {p1, v0, p2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 107
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda21;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 110
    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda22;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    .line 113
    invoke-virtual {p1, v1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->add(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;->register()V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_top_scroller_container_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerViewWidth:I

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_translation_x:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerTranslationX:I

    .line 120
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->collapse_tab_selected_text_color:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mSelectedColor:I

    .line 121
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->collapse_tab_unselected_text_color:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 389
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x13

    if-ne p1, v0, :cond_f

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    :cond_f
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 397
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->onOrientationChanged(I)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setScrollerOrientation(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_11

    :cond_10
    const/4 p1, 0x0

    .line 402
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 5

    .line 353
    const-string v0, "key_video_face_beauty_makeup_option"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    .line 356
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->animEntryVisibility(Z)V

    .line 357
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateMenuComponentVisible()V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateCollapsedTabLayout(Ljava/lang/Runnable;)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_video_face_beauty_makeup_menu_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    .line 360
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->getCurrentSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 361
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 419
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->ringScreenLightUpdateUI()V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateRingScreenLight(Z)V

    .line 421
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    if-eqz v0, :cond_11

    const/high16 v0, -0x1000000

    goto :goto_19

    .line 422
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->collapse_tab_unselected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_19
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mUnSelectedColor:I

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    if-eqz v0, :cond_24

    .line 424
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateLowLight(Z)V

    :cond_24
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 367
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 368
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 408
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->isSameState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setTabEnable(Z)V

    goto :goto_19

    .line 412
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setTabEnable(Z)V

    .line 414
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 166
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setupEntryView()V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->getScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->initClickListener()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->setDoAfterHandleTransition(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCollapsedTabLayout(Ljava/lang/Runnable;)V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateEntryTranslate()V
    .registers 1

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 7

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_144

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_e

    goto/16 :goto_144

    .line 203
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateProgressText(II)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateLayout(II)V

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->updateTabSwitchLayout(Z)V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 214
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_bar_margin_left:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 215
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    .line 218
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->collapsed_tab_left_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 220
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_collapsed_tab_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 221
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    .line 224
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_collapsed_tab_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 226
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mHoverTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    .line 229
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 230
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 231
    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_top_container_margin_bottom:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 232
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectListContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_mu_feature_height:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 237
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    .line 240
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 242
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_background_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 243
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mScrollerBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_tab_container_bottom_margin:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mTabMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p1

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_134

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_134

    .line 257
    invoke-interface {p1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 261
    :cond_134
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 262
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_144
    :goto_144
    return-void
.end method

.method public updateTopUILayout(Ljava/lang/Runnable;)V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_bar_margin_left:I

    .line 325
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI5;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
