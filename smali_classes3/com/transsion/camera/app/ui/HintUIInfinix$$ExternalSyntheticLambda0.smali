.class public final synthetic Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUIInfinix;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/FrameLayout;

.field public final synthetic f$3:Landroid/widget/FrameLayout;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUIInfinix;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUIInfinix;

    iput p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout;

    iput p5, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUIInfinix;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUIInfinix;->$r8$lambda$55rz4kE6yc14QEGagdQRA4fbikE(Lcom/transsion/camera/app/ui/HintUIInfinix;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
