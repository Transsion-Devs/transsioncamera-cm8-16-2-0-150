.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->$r8$lambda$HNH3j-1fjxYUfwGoR6Ww0BVmYl8(Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
