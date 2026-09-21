.class public final synthetic Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->$r8$lambda$0Gad5EmqULKltVJSKhNAuJq53hk(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
