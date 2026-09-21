.class Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideAnimationEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 2

    .line 1453
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1456
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1457
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    .line 1458
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 1459
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 1460
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    return-void

    .line 1463
    :cond_11
    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    if-eqz v0, :cond_114

    .line 1464
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 1465
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1467
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 1468
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1470
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    if-nez v0, :cond_9c

    .line 1471
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getExpandInitValue()[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1472
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScaleListener(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1473
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1475
    :cond_9c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getShrinkTargetValue()[I

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1476
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScaleListener(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1478
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 1479
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 1480
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAsdInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1481
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAsdInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAsdInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmCurrentAsdInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    return-void

    .line 1485
    :cond_114
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    return-void
.end method
