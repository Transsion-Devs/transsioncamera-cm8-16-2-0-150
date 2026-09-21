.class public final synthetic Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    iput-wide p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    iget-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->$r8$lambda$6LecNdwuAHNjJXWnpLRr9bWqyLM(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;JLandroid/animation/ValueAnimator;)V

    return-void
.end method
