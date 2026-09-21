.class public final synthetic Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$4:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->$r8$lambda$LZtEA1yMQel1WqgShCAXIoGs8I8(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
