.class Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hide:Z

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Landroid/view/View;Z)V
    .registers 4

    .line 100
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$rootView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$hide:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$rootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$hide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_b

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$rootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;->val$rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
