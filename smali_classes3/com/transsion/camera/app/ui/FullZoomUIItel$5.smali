.class Lcom/transsion/camera/app/ui/FullZoomUIItel$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

.field final synthetic val$distance:I

.field final synthetic val$isRecordBegin:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;ZI)V
    .registers 4

    .line 694
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$isRecordBegin:Z

    iput p3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$distance:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$isRecordBegin:Z

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$distance:I

    int-to-float p0, p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 702
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$isRecordBegin:Z

    if-nez p1, :cond_e

    .line 703
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    .line 704
    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 706
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$isRecordBegin:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->val$isRecordBegin:Z

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 713
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
