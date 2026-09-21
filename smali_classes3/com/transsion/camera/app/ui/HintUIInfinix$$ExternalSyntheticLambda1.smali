.class public final synthetic Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$1:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;->f$0:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;->f$0:Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->$r8$lambda$XtWfWgC97WVAQq8M9uAj07BEDJY(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
