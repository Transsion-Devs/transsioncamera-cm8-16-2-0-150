.class public final synthetic Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->$r8$lambda$xmSg8ivP2iQFJVXypQQbviijwYQ(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
