.class Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;
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

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 8

    .line 1643
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1635
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1636
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 1637
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private calculateIntervalTranslate()I
    .registers 3

    .line 1676
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 1680
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1683
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->pop_setting_container_translate:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
    .registers 19

    move-object/from16 v0, p6

    .line 1708
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v3, p3

    move v8, p4

    move v9, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1709
    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V

    .line 1710
    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V

    invoke-virtual {v5, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_22

    const/4 p0, 0x0

    .line 1732
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1734
    :cond_22
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-object v5
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V
    .registers 16

    if-nez p1, :cond_3

    goto :goto_2c

    .line 1693
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 p2, 0x1

    if-ge v8, p2, :cond_b

    goto :goto_2c

    .line 1697
    :cond_b
    new-array p2, v8, [Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    move v7, p2

    :goto_11
    if-ge v7, v8, :cond_2c

    .line 1699
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1701
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->calculateIntervalTranslate()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;

    move-result-object p0

    aput-object p0, p2, v7

    add-int/lit8 v7, v7, 0x1

    move-object p0, v0

    goto :goto_11

    :cond_2c
    :goto_2c
    return-void
.end method

.method private initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 1745
    iget v4, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mStartPosition:I

    mul-int v4, v4, p3

    .line 1746
    iget-object v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetpopupOptionRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->getChikdrenLeft(Ljava/lang/String;I)I

    move-result v5

    .line 1747
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->pop_option_item_common_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/2addr v6, v7

    const/4 v8, 0x0

    if-nez p2, :cond_47

    sub-int/2addr v4, v6

    sub-int/2addr v4, v5

    .line 1751
    iget-object v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_48

    :cond_47
    move v4, v8

    :goto_48
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p2, :cond_57

    .line 1752
    iget-object v6, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_58

    :cond_57
    move v6, v5

    :goto_58
    if-eqz p2, :cond_5c

    move v9, v5

    goto :goto_5d

    :cond_5c
    move v9, v8

    :goto_5d
    if-eqz p2, :cond_61

    move v10, v8

    goto :goto_62

    :cond_61
    move v10, v5

    .line 1756
    :goto_62
    new-array v11, v7, [F

    const/4 v12, 0x0

    aput v4, v11, v12

    const/4 v4, 0x1

    aput v8, v11, v4

    const-string/jumbo v13, "translationX"

    invoke-static {v1, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1757
    new-array v13, v7, [F

    aput v6, v13, v12

    aput v5, v13, v4

    const-string v14, "scaleX"

    invoke-static {v1, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1758
    new-array v14, v7, [F

    aput v6, v14, v12

    aput v5, v14, v4

    const-string v6, "scaleY"

    invoke-static {v1, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1759
    new-array v7, v7, [F

    aput v9, v7, v12

    aput v10, v7, v4

    const-string v4, "alpha"

    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1760
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1761
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_a8

    .line 1763
    :cond_a3
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1765
    :goto_a8
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1766
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1767
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_ef

    .line 1769
    iget-object v7, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v7

    const-wide/16 v14, 0x12c

    move-object/from16 p8, v6

    const-wide/16 v5, 0x32

    if-eqz v7, :cond_d2

    int-to-long v8, v3

    mul-long/2addr v8, v5

    .line 1770
    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1771
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_cf
    const-wide/16 v8, 0x15e

    goto :goto_db

    .line 1773
    :cond_d2
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v8, 0x96

    .line 1774
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_cf

    .line 1776
    :goto_db
    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1777
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v8, p8

    .line 1778
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v9, v3

    mul-long/2addr v9, v5

    .line 1779
    invoke-virtual {v13, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1780
    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_118

    :cond_ef
    move-object v8, v6

    .line 1782
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_fa

    const/4 v7, 0x0

    .line 1783
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_fa
    const-wide/16 v5, 0x64

    .line 1785
    invoke-virtual {v11, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v9, 0x0

    .line 1786
    invoke-virtual {v13, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1787
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1788
    iget-object v9, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v9}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v9

    if-eqz v9, :cond_115

    const-wide/16 v9, 0xc8

    .line 1789
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_118

    .line 1791
    :cond_115
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_118
    if-nez p2, :cond_11f

    const/4 v7, 0x0

    .line 1796
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_13e

    :cond_11f
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1798
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1799
    iget-object v5, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/PopSettingUI;->getItemSelectPosition()I

    move-result v5

    if-ne v5, v3, :cond_13e

    iget-object v3, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v3

    if-nez v3, :cond_13e

    const-wide/16 v5, 0x15e

    .line 1800
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v5, 0x64

    .line 1801
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1804
    :cond_13e
    :goto_13e
    new-instance v3, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1825
    iget-object v0, v0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 1826
    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    .line 1828
    :cond_15a
    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 9

    .line 1862
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1863
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1864
    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 1866
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2f

    array-length v1, p1

    if-lez v1, :cond_2f

    .line 1867
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2d

    aget-object v3, p1, v2

    if-eqz v3, :cond_2a

    .line 1868
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1869
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1872
    :cond_2d
    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_2f
    if-eqz p2, :cond_3c

    if-eqz p3, :cond_3c

    const/4 p0, 0x0

    .line 1875
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1876
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_3c
    return-void
.end method

.method public isAnimationRunning()Z
    .registers 8

    .line 1847
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

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

    .line 1850
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2f

    array-length v3, v3

    if-lez v3, :cond_2f

    move v3, v2

    move v4, v3

    .line 1851
    :goto_18
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2e

    .line 1852
    aget-object v5, v5, v3

    if-eqz v5, :cond_29

    .line 1853
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

    const/16 p6, 0x8

    .line 1650
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    iput p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mStartPosition:I

    .line 1652
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7e

    const/4 p2, 0x0

    .line 1653
    :goto_14
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 p6, 0x2

    if-ge p2, p4, :cond_63

    .line 1654
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_60

    if-eqz p3, :cond_40

    .line 1656
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    const/4 p6, 0x1

    invoke-static {p4, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_60

    .line 1658
    :cond_40
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-static {p4, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1659
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    const/high16 p6, 0x10000

    invoke-virtual {p4, p6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_60
    :goto_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 1663
    :cond_63
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p2

    invoke-static {p2, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1664
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopOptionSelectedBackground(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p2

    invoke-static {p2, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1665
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainerRotateLayout(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p2

    invoke-static {p2, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1667
    :cond_7e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v5

    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
