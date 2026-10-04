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

.field private mPopInterpolator3:Landroid/view/animation/PathInterpolator;

.field private mStartPosition:I

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 7

    .line 1146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1139
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1140
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private calculateIntervalTranslate()I
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 1183
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
    .registers 19

    move-object/from16 v0, p6

    .line 1207
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

    .line 1208
    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V

    .line 1209
    new-instance p2, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V

    invoke-virtual {v5, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_22

    const/4 p0, 0x0

    .line 1231
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1233
    :cond_22
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-object v5
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V
    .registers 16

    if-nez p1, :cond_3

    goto :goto_2c

    .line 1192
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 p2, 0x1

    if-ge v8, p2, :cond_b

    goto :goto_2c

    .line 1196
    :cond_b
    new-array p2, v8, [Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    move v7, p2

    :goto_11
    if-ge v7, v8, :cond_2c

    .line 1198
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1200
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
    .registers 24

    move-object/from16 v1, p1

    move/from16 v2, p5

    .line 1244
    iget v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mStartPosition:I

    mul-int v3, v3, p3

    .line 1245
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetpopupOptionRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5, v2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->getChikdrenLeft(Ljava/lang/String;I)I

    move-result v4

    .line 1246
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->pop_option_item_common_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/2addr v5, v6

    const/4 v7, 0x0

    if-nez p2, :cond_43

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    .line 1250
    iget-object v4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    goto :goto_44

    :cond_43
    move v3, v7

    :goto_44
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_53

    .line 1251
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_54

    :cond_53
    move v5, v4

    :goto_54
    if-eqz p2, :cond_58

    move v8, v4

    goto :goto_59

    :cond_58
    move v8, v7

    :goto_59
    if-eqz p2, :cond_5d

    move v9, v7

    goto :goto_5e

    :cond_5d
    move v9, v4

    .line 1255
    :goto_5e
    new-array v10, v6, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v3, 0x1

    aput v7, v10, v3

    const-string/jumbo v12, "translationX"

    invoke-static {v1, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1256
    new-array v12, v6, [F

    aput v5, v12, v11

    aput v4, v12, v3

    const-string v13, "scaleX"

    invoke-static {v1, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1257
    new-array v13, v6, [F

    aput v5, v13, v11

    aput v4, v13, v3

    const-string v5, "scaleY"

    invoke-static {v1, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1258
    new-array v6, v6, [F

    aput v8, v6, v11

    aput v9, v6, v3

    const-string v3, "alpha"

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1259
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1260
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1262
    :cond_9e
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1263
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1264
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mPopInterpolator3:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_d9

    .line 1266
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v6

    const-wide/16 v13, 0x12c

    const-wide/16 p6, 0x32

    if-eqz v6, :cond_c4

    int-to-long v8, v2

    mul-long v8, v8, p6

    .line 1267
    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1268
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_c4
    const-wide/16 v8, 0x15e

    .line 1270
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1271
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1272
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v8, v2

    mul-long v8, v8, p6

    .line 1273
    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1274
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_fc

    .line 1276
    :cond_d9
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 1277
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_e2
    const-wide/16 v8, 0x64

    .line 1279
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x0

    .line 1280
    invoke-virtual {v12, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1281
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1282
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-wide/16 v8, 0xc8

    .line 1283
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_fc
    :goto_fc
    if-nez p2, :cond_102

    .line 1288
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_105

    .line 1290
    :cond_102
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1292
    :goto_105
    new-instance v2, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/PopSettingUI;)Z

    move-result v0

    if-eqz v0, :cond_122

    move-object/from16 v0, p4

    .line 1314
    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_122
    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 11

    .line 1348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1350
    iput-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 1352
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    array-length v3, v0

    if-lez v3, :cond_30

    .line 1353
    array-length v3, v0

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2e

    aget-object v5, v0, v4

    if-eqz v5, :cond_2b

    .line 1354
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1355
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1358
    :cond_2e
    iput-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_30
    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3d

    .line 1361
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 1362
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3d
    if-eqz p1, :cond_5a

    if-eqz p3, :cond_5a

    .line 1365
    :goto_41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v2, p2, :cond_5a

    .line 1366
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1367
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1368
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1369
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1370
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_5a
    return-void
.end method

.method public isAnimationRunning()Z
    .registers 8

    .line 1333
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

    .line 1336
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2f

    array-length v3, v3

    if-lez v3, :cond_2f

    move v3, v2

    move v4, v3

    .line 1337
    :goto_18
    iget-object v5, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2e

    .line 1338
    aget-object v5, v5, v3

    if-eqz v5, :cond_29

    .line 1339
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

    const/4 p6, 0x1

    .line 1152
    invoke-virtual {p0, p1, p2, p6}, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    const/16 v0, 0x8

    .line 1154
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iput p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->mStartPosition:I

    .line 1156
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_78

    const/4 p2, 0x0

    .line 1157
    :goto_18
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x2

    if-ge p2, p4, :cond_66

    .line 1158
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_63

    if-eqz p3, :cond_43

    .line 1160
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-static {p4, p6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_63

    .line 1162
    :cond_43
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-static {p4, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1163
    iget-object p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingUIList(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    const/high16 v0, 0x10000

    invoke-virtual {p4, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_63
    :goto_63
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 1167
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1168
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainerRotateLayout(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1170
    :cond_78
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
