.class Lcom/transsion/camera/ui/setting/focus/FocusAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->triggerRepeatAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 3

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$2;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$2;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
