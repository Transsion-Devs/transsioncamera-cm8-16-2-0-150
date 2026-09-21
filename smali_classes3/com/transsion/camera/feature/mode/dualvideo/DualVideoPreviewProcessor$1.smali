.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->takePicture(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

.field final synthetic val$bitmapSource:[I

.field final synthetic val$surfaceHeight:I

.field final synthetic val$surfaceWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1050
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$bitmapSource:[I

    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceWidth:I

    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1054
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$bitmapSource:[I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceHeight:I

    invoke-static {v2, v3, v4, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mrgbToJpeg(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V

    .line 1055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1056
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rgbToJpeg time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
