.class public final synthetic Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;I[F)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;->f$2:[F

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->$r8$lambda$8KCHELRyOiVCHWHOurl08RgV5f4(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;I[F)V

    return-void
.end method
