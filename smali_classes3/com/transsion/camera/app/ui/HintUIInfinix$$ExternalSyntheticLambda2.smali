.class public final synthetic Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RelativeLayout$LayoutParams;

.field public final synthetic f$1:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;->f$1:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;->f$1:Landroid/widget/FrameLayout;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->$r8$lambda$97pb9WMurkEHMnwnmyOOJ1kZYMI(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
