.class public final synthetic Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->$r8$lambda$UVfMzB_UGfkACfMBFkJOsDK_eYw(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
