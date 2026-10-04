.class Lcom/transsion/camera/app/ui/PopSettingUI$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->createHidePopSettingAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

.field final synthetic val$animationVersion:I


# direct methods
.method public static synthetic $r8$lambda$9V_ia2GUGMffsou8nkkCCz9A_Vs(Lcom/transsion/camera/app/ui/PopSettingUI$10;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI$10;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V
    .registers 3

    .line 1545
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .registers 5

    .line 1562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v0

    if-eq p1, v0, :cond_2f

    .line 1563
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createHidePopSettingAnimation onAnimationEnd(post) intercepted! animVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentVersion="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1567
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 1568
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 6

    .line 1583
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v0

    if-eq p1, v0, :cond_33

    .line 1584
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createHidePopSettingAnimation onAnimationCancel intercepted! animVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1588
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1590
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1593
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1594
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1595
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V

    .line 1596
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 1597
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1598
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1599
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1600
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1601
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_87

    .line 1603
    :cond_a0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1559
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_24

    .line 1560
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "startHidePopSettingAnimation onAnimationEnd not main thread"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1561
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI$10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI$10$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$10;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1572
    :cond_24
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v0

    if-eq p1, v0, :cond_57

    .line 1573
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createHidePopSettingAnimation onAnimationEnd intercepted! animVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->val$animationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1577
    :cond_57
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 1578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1548
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 1549
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V

    .line 1550
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1a

    .line 1552
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1a

    :cond_2c
    return-void
.end method
