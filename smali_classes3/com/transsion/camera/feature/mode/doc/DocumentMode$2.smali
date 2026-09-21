.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIsPause(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    .line 496
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIsModeInit(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mdetectorImage(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/media/Image;II)V

    :cond_1e
    :goto_1e
    return-void
.end method
