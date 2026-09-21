.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isRecordBegin:Z

.field final synthetic val$optionRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/View;Z)V
    .registers 4

    .line 834
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$isRecordBegin:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 845
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 837
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 838
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 852
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$isRecordBegin:Z

    if-nez v1, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 856
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->val$optionRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method
