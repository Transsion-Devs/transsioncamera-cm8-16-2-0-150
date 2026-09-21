.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->setupImageReader(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 2

    .line 1337
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 10

    .line 1340
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 1341
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1342
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsCanUseZslBufferForCapture:Z
    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    if-eqz p1, :cond_40

    .line 1344
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 1346
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)[Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    array-length v4, v0

    :goto_1f
    if-ge v1, v4, :cond_39

    aget-object v5, v0, v1

    .line 1347
    sget-object v6, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_36

    .line 1349
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_36

    goto :goto_3a

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_39
    const/4 v5, 0x0

    .line 1355
    :goto_3a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->processCaptureFrame(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {p0, p1, v5}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_4e

    .line 1357
    :cond_40
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$6;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no image data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Ljava/lang/Exception;I)V

    :cond_4e
    :goto_4e
    if-eqz p1, :cond_53

    .line 1361
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_53
    return-void
.end method
