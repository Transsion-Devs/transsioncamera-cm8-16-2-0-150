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

    .line 1553
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1545
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1546
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 1547
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private animatorStart()V
    .registers 5

    .line 1592
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_18

    .line 1593
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    if-eqz v2, :cond_15

    .line 1594
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1595
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
    .registers 16

    .line 1604
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move v2, p2

    .line 1605
    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1606
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v4, p6

    move v5, p7

    .line 1607
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZLandroid/animation/AnimatorSet;IIII)V

    move-object p1, v0

    move-object p4, v1

    .line 1609
    new-instance p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;

    move-object p3, p5

    move p5, v2

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;Landroid/widget/FrameLayout;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_39

    const/4 p0, 0x0

    .line 1645
    invoke-interface {p3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1648
    :cond_39
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-object v3
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V
    .registers 15

    if-nez p1, :cond_3

    goto :goto_2b

    .line 1579
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 p2, 0x1

    if-ge v7, p2, :cond_b

    goto :goto_2b

    .line 1583
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->animatorStart()V

    .line 1584
    new-array p2, v7, [Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    move v6, p2

    :goto_14
    if-ge v6, v7, :cond_2b

    .line 1586
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1588
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;

    move-result-object p0

    aput-object p0, p2, v6

    add-int/lit8 v6, v6, 0x1

    move-object p0, v0

    goto :goto_14

    :cond_2b
    :goto_2b
    return-void
.end method

.method private initPopupAnim(Landroid/view/View;ZLandroid/animation/AnimatorSet;IIII)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    if-nez v1, :cond_18

    .line 1654
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initPopupAnim: view is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1661
    :cond_18
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1662
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->right_container_hover_translate:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1663
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1664
    iget v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    .line 1666
    const-string/jumbo v12, "translationX"

    const-string/jumbo v13, "translationY"

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-ne v4, v15, :cond_1ab

    .line 1667
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1668
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1669
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/16 v10, 0x8

    if-le v3, v10, :cond_81

    .line 1671
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/transsion/camera/R$dimen;->top_bar_container_item_distance_min:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_81
    add-int/2addr v6, v4

    const/16 v10, 0x10e

    const/16 v17, 0x5

    const/16 v11, 0xb4

    const/16 v14, 0x5a

    if-nez v5, :cond_90

    :cond_8c
    move/from16 v5, p4

    :goto_8e
    move-object v12, v13

    goto :goto_aa

    :cond_90
    if-ne v5, v14, :cond_95

    move/from16 v5, p4

    goto :goto_aa

    :cond_95
    if-ne v5, v11, :cond_a0

    .line 1680
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    rsub-int/lit8 v9, v5, 0x5

    rsub-int/lit8 v5, v3, 0x6

    add-int v5, v5, p4

    goto :goto_8e

    :cond_a0
    if-ne v5, v10, :cond_8c

    .line 1684
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    rsub-int/lit8 v9, v5, 0x5

    rsub-int/lit8 v5, v3, 0x6

    add-int v5, v5, p4

    .line 1688
    :goto_aa
    iget-object v13, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v13}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v13

    if-ne v13, v15, :cond_e6

    .line 1689
    iget-object v13, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    move/from16 v19, v15

    iget v15, v13, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v15, :cond_bc

    if-ne v15, v14, :cond_bf

    :cond_bc
    const/16 p4, 0x3

    goto :goto_d7

    :cond_bf
    const/16 p4, 0x3

    if-eq v15, v11, :cond_c7

    const/16 v10, 0x10e

    if-ne v15, v10, :cond_13b

    :cond_c7
    mul-int/2addr v9, v6

    add-int/lit8 v6, v5, 0x2

    .line 1692
    iget-object v10, v13, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    sub-int/2addr v6, v10

    add-int/2addr v4, v7

    mul-int/2addr v6, v4

    sub-int/2addr v9, v6

    :goto_d4
    move/from16 v4, p4

    goto :goto_13f

    :goto_d7
    neg-int v6, v6

    add-int/lit8 v9, v5, -0x3

    .line 1690
    iget-object v10, v13, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v4, v7

    mul-int/2addr v9, v4

    sub-int v9, v6, v9

    goto :goto_d4

    :cond_e6
    move/from16 v19, v15

    const/16 p4, 0x3

    .line 1694
    iget-object v10, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v10}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_13b

    .line 1695
    iget-object v10, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v13, v10, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v13, :cond_120

    if-ne v13, v14, :cond_fc

    goto :goto_120

    :cond_fc
    if-eq v13, v11, :cond_102

    const/16 v15, 0x10e

    if-ne v13, v15, :cond_13b

    :cond_102
    rsub-int/lit8 v9, v9, 0xa

    mul-int/2addr v9, v6

    add-int/lit8 v6, v5, 0x2

    add-int v13, v4, v7

    mul-int/2addr v6, v13

    sub-int/2addr v9, v6

    .line 1699
    iget-object v6, v10, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 1700
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    mul-int/2addr v4, v6

    sub-int/2addr v9, v4

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v7, v4

    sub-int/2addr v9, v7

    goto :goto_d4

    :cond_120
    :goto_120
    neg-int v9, v9

    mul-int/2addr v9, v6

    add-int v6, v4, v7

    mul-int/2addr v6, v5

    sub-int/2addr v9, v6

    .line 1696
    iget-object v6, v10, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 1697
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    mul-int/2addr v4, v6

    add-int/2addr v9, v4

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    mul-int/2addr v7, v4

    add-int/2addr v9, v7

    goto :goto_d4

    :cond_13b
    move/from16 v4, p4

    move/from16 v9, v16

    :goto_13f
    if-le v3, v4, :cond_16f

    .line 1705
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v4, :cond_160

    if-ne v4, v14, :cond_14a

    goto :goto_160

    :cond_14a
    if-eq v4, v11, :cond_150

    const/16 v10, 0x10e

    if-ne v4, v10, :cond_1a1

    .line 1708
    :cond_150
    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v8, v3

    goto :goto_1a1

    .line 1706
    :cond_160
    :goto_160
    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_1a1

    .line 1711
    :cond_16f
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v4, :cond_18f

    if-ne v4, v14, :cond_178

    goto :goto_18f

    :cond_178
    if-eq v4, v11, :cond_17e

    const/16 v10, 0x10e

    if-ne v4, v10, :cond_1a1

    .line 1714
    :cond_17e
    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v8, v3, -0x2

    goto :goto_1a1

    .line 1712
    :cond_18f
    :goto_18f
    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_container_expand_popwindow_translate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v18, 0x2

    mul-int/lit8 v8, v3, 0x2

    :cond_1a1
    :goto_1a1
    if-nez p2, :cond_1a7

    int-to-float v3, v9

    int-to-float v4, v8

    goto/16 :goto_23d

    :cond_1a7
    int-to-float v3, v8

    int-to-float v4, v9

    goto/16 :goto_23d

    :cond_1ab
    move/from16 v19, v15

    const/16 v17, 0x5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f7

    .line 1727
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->left_and_right_hover_top_bar_container_item_distance:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1729
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v5

    move/from16 v8, v19

    if-ne v5, v8, :cond_1d4

    mul-int/lit8 v9, v9, 0x39

    sub-int v5, p4, v3

    add-int/2addr v5, v8

    add-int/2addr v6, v4

    mul-int/lit8 v4, v7, 0x4

    add-int/2addr v6, v4

    mul-int/2addr v3, v7

    sub-int/2addr v6, v3

    mul-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_1eb

    .line 1732
    :cond_1d4
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1e9

    mul-int/lit8 v9, v9, 0x39

    add-int/2addr v6, v4

    mul-int/lit8 v4, v7, 0x4

    add-int/2addr v6, v4

    mul-int/2addr v3, v7

    sub-int/2addr v6, v3

    mul-int v6, v6, p4

    sub-int/2addr v9, v6

    goto :goto_1eb

    :cond_1e9
    move/from16 v9, v16

    :goto_1eb
    if-nez p2, :cond_1f0

    :goto_1ed
    int-to-float v3, v9

    const/4 v4, 0x0

    goto :goto_1f3

    :cond_1f0
    int-to-float v3, v9

    move v4, v3

    const/4 v3, 0x0

    :goto_1f3
    move/from16 v5, p4

    move-object v12, v13

    goto :goto_23d

    :cond_1f7
    move/from16 v5, v17

    if-ne v4, v5, :cond_239

    .line 1746
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->left_and_right_hover_top_bar_container_item_distance:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1748
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_21a

    mul-int/lit8 v9, v9, 0x39

    add-int/2addr v6, v4

    mul-int/lit8 v4, v7, 0x4

    add-int/2addr v6, v4

    mul-int/2addr v3, v7

    sub-int/2addr v6, v3

    mul-int v6, v6, p4

    sub-int/2addr v9, v6

    goto :goto_236

    .line 1751
    :cond_21a
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_234

    mul-int/lit8 v9, v9, 0x39

    sub-int v5, p4, v3

    const/16 v19, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v4

    mul-int/lit8 v4, v7, 0x4

    add-int/2addr v6, v4

    mul-int/2addr v3, v7

    sub-int/2addr v6, v3

    mul-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_236

    :cond_234
    move/from16 v9, v16

    :goto_236
    if-nez p2, :cond_1f0

    goto :goto_1ed

    :cond_239
    move/from16 v5, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1767
    :goto_23d
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tartTranslationValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  endTranslationValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_263

    move v7, v6

    goto :goto_264

    :cond_263
    const/4 v7, 0x0

    :goto_264
    if-eqz p2, :cond_268

    const/4 v8, 0x0

    goto :goto_269

    :cond_268
    move v8, v6

    :goto_269
    if-nez p2, :cond_277

    .line 1772
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v9}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v9

    if-eqz v9, :cond_277

    const/high16 v9, 0x3f000000    # 0.5f

    :goto_275
    const/4 v13, 0x2

    goto :goto_279

    :cond_277
    move v9, v6

    goto :goto_275

    .line 1774
    :goto_279
    new-array v10, v13, [F

    aput v3, v10, v16

    const/16 v19, 0x1

    aput v4, v10, v19

    invoke-static {v1, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1775
    new-array v4, v13, [F

    aput v7, v4, v16

    aput v8, v4, v19

    const-string v7, "alpha"

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1776
    new-array v7, v13, [F

    aput v9, v7, v16

    aput v6, v7, v19

    const-string v8, "scaleX"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1777
    new-array v8, v13, [F

    aput v9, v8, v16

    aput v6, v8, v19

    const-string v9, "scaleY"

    invoke-static {v1, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x32

    if-eqz p2, :cond_2b0

    const-wide/16 v11, 0x1

    goto :goto_2b1

    :cond_2b0
    move-wide v11, v9

    .line 1778
    :goto_2b1
    invoke-virtual {v4, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v11, 0x96

    if-nez p2, :cond_2e7

    .line 1780
    iget-object v13, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v13}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v13

    const-wide/16 v14, 0x12c

    if-eqz v13, :cond_2cf

    move-object/from16 p5, v7

    int-to-long v6, v5

    mul-long/2addr v6, v9

    .line 1781
    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1782
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_2cc
    move-object/from16 v6, p5

    goto :goto_2d8

    :cond_2cf
    move-object/from16 p5, v7

    .line 1784
    invoke-virtual {v4, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1785
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2cc

    .line 1787
    :goto_2d8
    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1788
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v13, v5

    mul-long/2addr v13, v9

    .line 1789
    invoke-virtual {v6, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1790
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_30d

    :cond_2e7
    move-object v6, v7

    .line 1792
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2f2

    const/4 v5, 0x0

    .line 1793
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2f2
    const-wide/16 v9, 0x0

    .line 1795
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1796
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1797
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v5

    if-eqz v5, :cond_308

    const-wide/16 v9, 0xc8

    .line 1798
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_30d

    :cond_308
    const-wide/16 v9, 0x64

    .line 1800
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1804
    :goto_30d
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v5

    if-eqz v5, :cond_31b

    .line 1805
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_320

    .line 1807
    :cond_31b
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1809
    :goto_320
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1810
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1811
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1812
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1813
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x15e

    .line 1814
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez p2, :cond_343

    const/4 v5, 0x0

    .line 1817
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_348

    :cond_343
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1819
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1821
    :goto_348
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result v0

    if-eqz v0, :cond_35c

    .line 1822
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    .line 1824
    :cond_35c
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 9

    .line 1860
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "cancelAnimation start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1861
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1862
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1863
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 1865
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_35

    .line 1867
    array-length v1, p1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_33

    .line 1869
    aget-object v3, p1, v2

    if-eqz v3, :cond_30

    .line 1870
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1871
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1874
    :cond_33
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_35
    if-eqz p2, :cond_42

    if-eqz p3, :cond_42

    const/4 p0, 0x0

    .line 1877
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1878
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 1880
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "cancelAnimation end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isAnimationRunning()Z
    .registers 8

    .line 1845
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

    .line 1848
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2f

    array-length v3, v3

    if-lez v3, :cond_2f

    move v3, v2

    move v4, v3

    .line 1849
    :goto_18
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2e

    .line 1850
    aget-object v5, v5, v3

    if-eqz v5, :cond_29

    .line 1851
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

    .line 1559
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startPopupAnimation start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1561
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    .line 1563
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p2, p6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    .line 1564
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v5, p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V

    .line 1565
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startPopupAnimation end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
