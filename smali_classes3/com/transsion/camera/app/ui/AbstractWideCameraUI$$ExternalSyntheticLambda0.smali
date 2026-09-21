.class public final synthetic Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->$r8$lambda$Ds4lozXyrmTCV4nECACAjwaFahI(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
