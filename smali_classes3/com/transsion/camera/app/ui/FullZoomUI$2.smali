.class Lcom/transsion/camera/app/ui/FullZoomUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutWhenRecording(ZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

.field final synthetic val$isRecordBegin:Z

.field final synthetic val$translateY:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;ZI)V
    .registers 4

    .line 1058
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$isRecordBegin:Z

    iput p3, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$translateY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1061
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$isRecordBegin:Z

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$translateY:I

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

    .line 1066
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$isRecordBegin:Z

    if-nez p1, :cond_e

    .line 1067
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    .line 1068
    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1070
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$isRecordBegin:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->val$isRecordBegin:Z

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 1076
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1077
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1078
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
