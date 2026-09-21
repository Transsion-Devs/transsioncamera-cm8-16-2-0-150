.class Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShotCallback"
.end annotation


# instance fields
.field private final mCaptureInfo:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;

.field private mCaptureJpeg:[B

.field private mPreviewJpeg:[B

.field private mPreviewShot:[B

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)V
    .registers 3

    .line 370
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureInfo:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;

    return-void
.end method

.method private checkNotifyShot()V
    .registers 5

    .line 405
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNotifyShot mPreviewJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

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

    .line 407
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    array-length v3, v2

    :goto_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    if-eqz v0, :cond_39

    .line 409
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->notifyShot()V

    :cond_39
    return-void
.end method

.method private notifyShot()V
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureInfo:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewShot:[B

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$monShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V

    return-void
.end method

.method private rotateJpeg([BI)[B
    .registers 5

    const/4 p0, 0x0

    .line 418
    array-length v0, p1

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_13

    .line 420
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "rotateJpeg decodeByteArray failed"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 423
    :cond_13
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_23

    .line 425
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "rotateJpeg rotateBitmap failed"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 429
    :cond_23
    :try_start_23
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_3a

    .line 430
    :try_start_28
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_3c

    .line 433
    :try_start_36
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    goto :goto_46

    :catchall_3c
    move-exception p0

    .line 429
    :try_start_3d
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p2

    :try_start_42
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_3a

    .line 434
    :goto_46
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v0, "rotateJpeg compress failed"

    invoke-static {p2, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public onCaptureShot([B)V
    .registers 5

    .line 441
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 444
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onCaptureShot jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 449
    :cond_2c
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mCaptureJpeg:[B

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->checkNotifyShot()V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 5

    .line 376
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 379
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onPreviewShot jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 384
    :cond_2c
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewShot:[B

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)I

    move-result v0

    if-lez v0, :cond_4f

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->rotateJpeg([BI)[B

    move-result-object p1

    if-nez p1, :cond_4f

    .line 389
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onPreviewShot rotateJpeg failed, jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->notifyShot()V

    return-void

    .line 395
    :cond_4f
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiArtMuseumDumpPreviewShot()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 396
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/util/DumpUtil;->dumpJpeg([B)V

    .line 399
    :cond_58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->mPreviewJpeg:[B

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;->checkNotifyShot()V

    return-void
.end method
