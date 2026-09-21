.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationStrategy"
.end annotation


# instance fields
.field private mBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private mChildAnimators:[Landroid/animation/AnimatorSet;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopInterpolator2:Landroid/view/animation/PathInterpolator;

.field private mPopInterpolator3:Landroid/view/animation/PathInterpolator;

.field private mStartPosition:I

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 8

    .line 1808
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1800
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1801
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 1802
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private animatorStart()V
    .registers 5

    .line 1876
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_18

    .line 1877
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    if-eqz v2, :cond_15

    .line 1878
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1879
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method private calculateIntervalTranslate()I
    .registers 6

    .line 1832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmPopSettingSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    .line 1833
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_item_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1834
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v3

    if-ne v3, v2, :cond_2d

    .line 1835
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-gt p0, v2, :cond_41

    return v1

    .line 1840
    :cond_2d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    .line 1841
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-gt p0, v2, :cond_41

    return v1

    :cond_41
    return v0

    :cond_42
    return v1

    .line 1849
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1850
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gt v3, v2, :cond_5e

    return v1

    .line 1853
    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTopBarContainerAvailableWidth(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v2

    div-int/2addr v0, p0

    return v0
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
    .registers 19

    .line 1888
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1889
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1890
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v2, p3

    move v7, p4

    move v8, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1891
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V

    move-object p2, v4

    .line 1893
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    move-object/from16 v3, p6

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;Landroid/widget/FrameLayout;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v3, :cond_3f

    const/4 p0, 0x0

    .line 1929
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1932
    :cond_3f
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-object p2
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V
    .registers 16

    if-nez p1, :cond_3

    goto :goto_2f

    .line 1863
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 p2, 0x1

    if-ge v8, p2, :cond_b

    goto :goto_2f

    .line 1867
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->animatorStart()V

    .line 1868
    new-array p2, v8, [Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    move v7, p2

    :goto_14
    if-ge v7, v8, :cond_2f

    .line 1870
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1872
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->calculateIntervalTranslate()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;

    move-result-object p0

    aput-object p0, p2, v7

    add-int/lit8 v7, v7, 0x1

    move-object p0, v0

    goto :goto_14

    :cond_2f
    :goto_2f
    return-void
.end method

.method private initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    if-nez v1, :cond_1a

    .line 1938
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initPopupAnim: view is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1941
    :cond_1a
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1947
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1948
    sget v9, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_margin:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1949
    iget-object v10, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v10}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/transsion/camera/R$dimen;->column_horizontal_translate:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1950
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v11}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/transsion/camera/R$dimen;->right_container_hover_translate:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1951
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1953
    iget v13, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    .line 1955
    const-string/jumbo v15, "translationX"

    const/16 v16, 0x0

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x5

    const/4 v14, 0x1

    move/from16 v19, v8

    if-ne v5, v14, :cond_1cc

    .line 1956
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1957
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1958
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/16 v10, 0x8

    if-le v4, v10, :cond_a7

    .line 1960
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance_min:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :cond_a7
    add-int/2addr v7, v5

    const/16 v10, 0x10e

    const/16 v11, 0xb4

    const/16 v8, 0x5a

    if-nez v6, :cond_b3

    :cond_b0
    :goto_b0
    move-object/from16 v15, v17

    goto :goto_c9

    :cond_b3
    if-ne v6, v8, :cond_b6

    goto :goto_c9

    :cond_b6
    if-ne v6, v11, :cond_c0

    .line 1969
    iget v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    rsub-int/lit8 v13, v6, 0x5

    rsub-int/lit8 v6, v4, 0x6

    add-int/2addr v3, v6

    goto :goto_b0

    :cond_c0
    if-ne v6, v10, :cond_b0

    .line 1973
    iget v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    rsub-int/lit8 v13, v6, 0x5

    rsub-int/lit8 v6, v4, 0x6

    add-int/2addr v3, v6

    .line 1977
    :goto_c9
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    if-ne v6, v14, :cond_105

    .line 1978
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    move/from16 v21, v14

    iget v14, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v14, :cond_db

    if-ne v14, v8, :cond_de

    :cond_db
    const/16 p5, 0x3

    goto :goto_f6

    :cond_de
    const/16 p5, 0x3

    if-eq v14, v11, :cond_e6

    const/16 v10, 0x10e

    if-ne v14, v10, :cond_15c

    :cond_e6
    mul-int/2addr v13, v7

    add-int/lit8 v7, v3, 0x2

    .line 1981
    iget-object v6, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v7, v6

    add-int/2addr v5, v9

    mul-int/2addr v7, v5

    sub-int/2addr v13, v7

    :goto_f3
    move/from16 v5, p5

    goto :goto_160

    :goto_f6
    neg-int v7, v7

    add-int/lit8 v10, v3, -0x3

    .line 1979
    iget-object v6, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v10, v6

    add-int/2addr v5, v9

    mul-int/2addr v10, v5

    sub-int v13, v7, v10

    goto :goto_f3

    :cond_105
    move/from16 v21, v14

    const/16 p5, 0x3

    .line 1983
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_15c

    .line 1984
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v10, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v10, :cond_140

    if-ne v10, v8, :cond_11b

    goto :goto_140

    :cond_11b
    if-eq v10, v11, :cond_121

    const/16 v14, 0x10e

    if-ne v10, v14, :cond_15c

    :cond_121
    rsub-int/lit8 v10, v13, 0xa

    mul-int/2addr v10, v7

    add-int/lit8 v7, v3, 0x2

    add-int v13, v5, v9

    mul-int/2addr v7, v13

    sub-int/2addr v10, v7

    .line 1988
    iget-object v6, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 1989
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v10, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v9, v5

    sub-int v13, v10, v9

    goto :goto_f3

    :cond_140
    :goto_140
    neg-int v10, v13

    mul-int/2addr v10, v7

    add-int v7, v5, v9

    mul-int/2addr v7, v3

    sub-int/2addr v10, v7

    .line 1985
    iget-object v6, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 1986
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    mul-int/2addr v5, v6

    add-int/2addr v10, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    mul-int/2addr v9, v5

    add-int v13, v10, v9

    goto :goto_f3

    :cond_15c
    move/from16 v5, p5

    move/from16 v13, v16

    :goto_160
    if-le v4, v5, :cond_190

    .line 1994
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v5, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v5, :cond_181

    if-ne v5, v8, :cond_16b

    goto :goto_181

    :cond_16b
    if-eq v5, v11, :cond_171

    const/16 v10, 0x10e

    if-ne v5, v10, :cond_1c2

    .line 1997
    :cond_171
    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v12, v4

    goto :goto_1c2

    .line 1995
    :cond_181
    :goto_181
    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_1c2

    .line 2000
    :cond_190
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v5, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v5, :cond_1b0

    if-ne v5, v8, :cond_199

    goto :goto_1b0

    :cond_199
    if-eq v5, v11, :cond_19f

    const/16 v10, 0x10e

    if-ne v5, v10, :cond_1c2

    .line 2003
    :cond_19f
    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v12, v4, -0x2

    goto :goto_1c2

    .line 2001
    :cond_1b0
    :goto_1b0
    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v20, 0x2

    mul-int/lit8 v12, v4, 0x2

    :cond_1c2
    :goto_1c2
    if-nez p2, :cond_1c8

    int-to-float v4, v13

    int-to-float v5, v12

    goto/16 :goto_337

    :cond_1c8
    int-to-float v4, v12

    int-to-float v5, v13

    goto/16 :goto_337

    :cond_1cc
    move/from16 v21, v14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_218

    .line 2016
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->left_and_right_hover_top_bar_container_item_distance:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2018
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    move/from16 v7, v21

    if-ne v6, v7, :cond_1f4

    mul-int/lit8 v13, v13, 0x39

    sub-int v6, v3, v4

    add-int/2addr v6, v7

    add-int v8, v19, v5

    mul-int/lit8 v5, v11, 0x4

    add-int/2addr v8, v5

    mul-int/2addr v4, v11

    sub-int/2addr v8, v4

    mul-int/2addr v6, v8

    sub-int/2addr v13, v6

    goto :goto_20c

    .line 2021
    :cond_1f4
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_20a

    mul-int/lit8 v13, v13, 0x39

    add-int v8, v19, v5

    mul-int/lit8 v5, v11, 0x4

    add-int/2addr v8, v5

    mul-int/2addr v4, v11

    sub-int/2addr v8, v4

    mul-int v4, v3, v8

    sub-int/2addr v13, v4

    goto :goto_20c

    :cond_20a
    move/from16 v13, v16

    :goto_20c
    if-nez p2, :cond_211

    :goto_20e
    int-to-float v4, v13

    const/4 v5, 0x0

    goto :goto_214

    :cond_211
    int-to-float v4, v13

    move v5, v4

    const/4 v4, 0x0

    :goto_214
    move-object/from16 v15, v17

    goto/16 :goto_337

    :cond_218
    move/from16 v6, v18

    if-ne v5, v6, :cond_25c

    .line 2035
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->left_and_right_hover_top_bar_container_item_distance:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2037
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23c

    mul-int/lit8 v13, v13, 0x39

    add-int v8, v19, v5

    mul-int/lit8 v5, v11, 0x4

    add-int/2addr v8, v5

    mul-int/2addr v4, v11

    sub-int/2addr v8, v4

    mul-int v4, v3, v8

    sub-int/2addr v13, v4

    goto :goto_259

    .line 2040
    :cond_23c
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_257

    mul-int/lit8 v13, v13, 0x39

    sub-int v6, v3, v4

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int v8, v19, v5

    mul-int/lit8 v5, v11, 0x4

    add-int/2addr v8, v5

    mul-int/2addr v4, v11

    sub-int/2addr v8, v4

    mul-int/2addr v6, v8

    sub-int/2addr v13, v6

    goto :goto_259

    :cond_257
    move/from16 v13, v16

    :goto_259
    if-nez p2, :cond_211

    goto :goto_20e

    .line 2052
    :cond_25c
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27c

    .line 2054
    sget v4, Lcom/transsion/camera/R$dimen;->flash_adjust_margin_top_hover:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2055
    sget v4, Lcom/transsion/camera/R$dimen;->column_left_and_right_top_bar_horizontal_padding:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2056
    sget v5, Lcom/transsion/camera/R$dimen;->column_left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move/from16 v9, v16

    goto :goto_284

    .line 2058
    :cond_27c
    sget v4, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_padding:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move/from16 v5, p3

    .line 2060
    :goto_284
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_common_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/16 v20, 0x2

    div-int/lit8 v6, v6, 0x2

    .line 2061
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    .line 2062
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmPopSettingSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v8

    if-eqz v8, :cond_2e2

    .line 2063
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2c2

    .line 2064
    iget v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v4

    add-int/2addr v5, v9

    goto :goto_30a

    .line 2065
    :cond_2c2
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2de

    .line 2066
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v8, v8, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v8

    iget v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    mul-int/2addr v5, v11

    sub-int/2addr v8, v5

    mul-int/2addr v4, v9

    sub-int/2addr v8, v4

    sub-int v8, v8, v19

    add-int v5, v8, v10

    goto :goto_30a

    .line 2068
    :cond_2de
    iget v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    :goto_2e0
    mul-int/2addr v5, v4

    goto :goto_30a

    .line 2071
    :cond_2e2
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    .line 2072
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_common_width:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/16 v20, 0x2

    div-int/lit8 v6, v4, 0x2

    .line 2073
    iget v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    goto :goto_2e0

    .line 2076
    :goto_30a
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    const-string v8, "1"

    invoke-virtual {v4, v8, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->getChikdrenLeft(Ljava/lang/String;I)I

    move-result v4

    if-nez p2, :cond_324

    .line 2078
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v8

    if-nez v8, :cond_324

    sub-int v8, v5, v6

    sub-int/2addr v8, v4

    add-int/2addr v8, v7

    int-to-float v8, v8

    goto :goto_325

    :cond_324
    const/4 v8, 0x0

    :goto_325
    if-eqz p2, :cond_334

    .line 2079
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v9}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v9

    if-nez v9, :cond_334

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-float v4, v5

    goto :goto_335

    :cond_334
    const/4 v4, 0x0

    :goto_335
    move v5, v4

    move v4, v8

    .line 2081
    :goto_337
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tartTranslationValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  endTranslationValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_35d

    move v7, v6

    goto :goto_35e

    :cond_35d
    const/4 v7, 0x0

    :goto_35e
    if-eqz p2, :cond_362

    const/4 v8, 0x0

    goto :goto_363

    :cond_362
    move v8, v6

    :goto_363
    if-nez p2, :cond_371

    .line 2086
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v9}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v9

    if-eqz v9, :cond_371

    const/high16 v9, 0x3f000000    # 0.5f

    :goto_36f
    const/4 v10, 0x2

    goto :goto_373

    :cond_371
    move v9, v6

    goto :goto_36f

    .line 2088
    :goto_373
    new-array v11, v10, [F

    aput v4, v11, v16

    const/16 v21, 0x1

    aput v5, v11, v21

    invoke-static {v1, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2089
    new-array v5, v10, [F

    aput v7, v5, v16

    aput v8, v5, v21

    const-string v7, "alpha"

    invoke-static {v1, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2090
    new-array v7, v10, [F

    aput v9, v7, v16

    aput v6, v7, v21

    const-string v8, "scaleX"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2091
    new-array v8, v10, [F

    aput v9, v8, v16

    aput v6, v8, v21

    const-string v9, "scaleY"

    invoke-static {v1, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v11, 0x32

    if-eqz p2, :cond_3aa

    const-wide/16 v13, 0x1

    goto :goto_3ab

    :cond_3aa
    move-wide v13, v11

    .line 2092
    :goto_3ab
    invoke-virtual {v5, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v13, 0x96

    if-nez p2, :cond_3e1

    .line 2094
    iget-object v15, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v15}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v15

    const-wide/16 v9, 0x12c

    if-eqz v15, :cond_3c9

    move-object/from16 p7, v7

    int-to-long v6, v3

    mul-long/2addr v6, v11

    .line 2095
    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2096
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_3c6
    move-object/from16 v6, p7

    goto :goto_3d2

    :cond_3c9
    move-object/from16 p7, v7

    .line 2098
    invoke-virtual {v5, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2099
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3c6

    .line 2101
    :goto_3d2
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2102
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v9, v3

    mul-long/2addr v9, v11

    .line 2103
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2104
    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_407

    :cond_3e1
    move-object v6, v7

    .line 2106
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_3ec

    const/4 v7, 0x0

    .line 2107
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_3ec
    const-wide/16 v9, 0x0

    .line 2109
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2110
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2111
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v7

    if-eqz v7, :cond_402

    const-wide/16 v9, 0xc8

    .line 2112
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_407

    :cond_402
    const-wide/16 v9, 0x64

    .line 2114
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2118
    :goto_407
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v7

    if-eqz v7, :cond_415

    .line 2119
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_41a

    .line 2121
    :cond_415
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2123
    :goto_41a
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2124
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2125
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2126
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2127
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x15e

    .line 2128
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez p2, :cond_43d

    const/4 v7, 0x0

    .line 2131
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_45a

    :cond_43d
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2133
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2134
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getItemSelectPosition()I

    move-result v1

    if-ne v1, v3, :cond_45a

    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v1

    if-nez v1, :cond_45a

    .line 2135
    invoke-virtual {v5, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v9, 0x1

    .line 2136
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2139
    :cond_45a
    :goto_45a
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v0

    if-eqz v0, :cond_46e

    .line 2140
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    .line 2142
    :cond_46e
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 9

    .line 2178
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "cancelAnimation start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2181
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 2183
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_35

    .line 2185
    array-length v1, p1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_33

    .line 2187
    aget-object v3, p1, v2

    if-eqz v3, :cond_30

    .line 2188
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2189
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2192
    :cond_33
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_35
    if-eqz p2, :cond_42

    if-eqz p3, :cond_42

    const/4 p0, 0x0

    .line 2195
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 2196
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 2198
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "cancelAnimation end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isAnimationRunning()Z
    .registers 8

    .line 2163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 2166
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2f

    array-length v3, v3

    if-lez v3, :cond_2f

    move v3, v2

    move v4, v3

    .line 2167
    :goto_18
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2e

    .line 2168
    aget-object v5, v5, v3

    if-eqz v5, :cond_29

    .line 2169
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v1

    goto :goto_2a

    :cond_29
    move v5, v2

    :goto_2a
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2e
    move v2, v4

    :cond_2f
    or-int p0, v0, v2

    return p0
.end method

.method public startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V
    .registers 15

    .line 1814
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startPopupAnimation start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1816
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    .line 1818
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p2, p6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    .line 1819
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v5, p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V

    .line 1820
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startPopupAnimation end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
