.class Lcom/transsion/camera/app/ui/PopSettingUI$11;
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


# direct methods
.method public static synthetic $r8$lambda$RKbGABbe8zfOS-7pwEXuB4CQHpk(Lcom/transsion/camera/app/ui/PopSettingUI$11;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI$11;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 2

    .line 2066
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 3

    .line 2083
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 2084
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x16f

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 6

    .line 2094
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2095
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 2096
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2099
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V

    .line 2102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 2103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/PopSettingUI;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2104
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2105
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2106
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2107
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_54

    .line 2109
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2080
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_22

    .line 2081
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "startHidePopSettingAnimation onAnimationEnd not main thread"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2082
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/PopSettingUI;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI$11$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI$11$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI$11;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2088
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    .line 2089
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

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

    .line 2069
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 2070
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/PopSettingUI;Z)V

    .line 2071
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$11;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

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

    .line 2073
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1a

    :cond_2c
    return-void
.end method
