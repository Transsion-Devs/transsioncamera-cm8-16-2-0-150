.class Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;
.implements Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShotCallback"
.end annotation


# instance fields
.field private final mCaptureInfo:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;

.field private mCaptureJpeg:[B

.field private final mNotifyShot:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreviewJpeg:[B

.field private mPreviewShot:[B

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;)V
    .registers 4

    .line 379
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mNotifyShot:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureInfo:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;

    return-void
.end method

.method private checkNotifyShot()V
    .registers 5

    .line 410
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNotifyShot mPreviewJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    const/4 v3, 0x0

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    array-length v2, v2

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    array-length v3, v2

    :goto_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    if-eqz v0, :cond_39

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->notifyShot()V

    :cond_39
    return-void
.end method

.method private notifyShot()V
    .registers 5

    .line 419
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyShot mNotifyShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mNotifyShot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mNotifyShot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureInfo:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewShot:[B

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$monShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V

    :cond_31
    return-void
.end method


# virtual methods
.method public onCaptureShot([B)V
    .registers 5

    .line 427
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureShot jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_12

    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    array-length v2, p1

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2c

    .line 430
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onCaptureShot jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 435
    :cond_2c
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->checkNotifyShot()V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 5

    .line 385
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewShot jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_12

    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    array-length v2, p1

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2c

    .line 388
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onPreviewShot jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 393
    :cond_2c
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewShot:[B

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)I

    move-result v0

    if-lez v0, :cond_4f

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/aigc/util/JpegUtil;->rotateJpeg([BI)[B

    move-result-object p1

    if-nez p1, :cond_4f

    .line 398
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onPreviewShot rotateJpeg failed, jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 404
    :cond_4f
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;->checkNotifyShot()V

    return-void
.end method
