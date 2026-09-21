.class public Lcom/ss/android/medialib/qr/PicScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;
    }
.end annotation


# instance fields
.field public handle:J

.field private listener:Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 18
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->success:Z

    .line 26
    invoke-direct {p0}, Lcom/ss/android/medialib/qr/PicScanner;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeStart(JLandroid/graphics/Bitmap;Lcom/ss/android/medialib/qr/ScanSettings;)I
.end method

.method private native nativeStop(J)V
.end method


# virtual methods
.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 5

    .line 91
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/qr/PicScanner;->nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 93
    invoke-virtual {v0}, Lcom/ss/android/medialib/model/EnigmaResult;->getResult()[Lcom/ss/android/medialib/model/Enigma;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/ss/android/medialib/qr/PicScanner;->success:Z

    :cond_19
    return-object v0
.end method

.method public isSuccess()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/ss/android/medialib/qr/PicScanner;->success:Z

    return p0
.end method

.method public isValid()Z
    .registers 5

    .line 101
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onResult(Z)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/ss/android/medialib/qr/PicScanner;->listener:Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;

    if-eqz p0, :cond_7

    .line 133
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;->onResult(Z)V

    :cond_7
    return-void
.end method

.method public declared-synchronized release()V
    .registers 6

    monitor-enter p0

    .line 81
    :try_start_1
    const-string v0, "PicScanner"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 83
    const-string v0, "PicScanner"

    const-string v1, "release skip"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 84
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    goto :goto_22

    .line 86
    :cond_1b
    :try_start_1b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/qr/PicScanner;->nativeRelease(J)V

    .line 87
    iput-wide v2, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_19

    .line 88
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_19

    throw v0
.end method

.method public setListener(Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/ss/android/medialib/qr/PicScanner;->listener:Lcom/ss/android/medialib/qr/PicScanner$OnResultListener;

    return-void
.end method

.method public start(Landroid/graphics/Bitmap;Lcom/ss/android/medialib/qr/ScanSettings;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->success:Z

    .line 67
    iget-wide v1, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/ss/android/medialib/qr/PicScanner;->nativeStart(JLandroid/graphics/Bitmap;Lcom/ss/android/medialib/qr/ScanSettings;)I

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_15

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    return v0
.end method

.method public start(Ljava/lang/String;Lcom/ss/android/medialib/qr/ScanSettings;)I
    .registers 13

    .line 30
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 v1, 0x0

    .line 34
    :try_start_b
    iget v0, p2, Lcom/ss/android/medialib/qr/ScanSettings;->width:I

    iget v2, p2, Lcom/ss/android/medialib/qr/ScanSettings;->height:I

    invoke-static {p1, v0, v2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_8c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_13} :catch_7f
    .catchall {:try_start_b .. :try_end_13} :catchall_71

    if-eqz v3, :cond_5f

    .line 37
    :try_start_15
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int p1, v6, v7

    const v0, 0x3d0900

    if-le p1, v0, :cond_4c

    int-to-float p1, v6

    int-to-float v0, v7

    mul-float/2addr p1, v0

    const v0, 0x4a742400    # 4000000.0f

    div-float/2addr p1, v0

    float-to-double v4, p1

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v4

    double-to-float p1, v8

    .line 41
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    invoke-virtual {v8, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_53

    :catchall_44
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    goto :goto_73

    :catch_48
    move-object v1, v3

    goto :goto_7f

    :catch_4a
    move-object v1, v3

    goto :goto_8c

    .line 45
    :cond_4c
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    :goto_53
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 48
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5c} :catch_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_5c} :catch_48
    .catchall {:try_start_15 .. :try_end_5c} :catchall_44

    goto :goto_61

    :cond_5d
    :goto_5d
    move-object v1, v3

    goto :goto_61

    :cond_5f
    move-object p1, v1

    goto :goto_5d

    :goto_61
    if-eqz v1, :cond_6c

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_6c
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/qr/PicScanner;->start(Landroid/graphics/Bitmap;Lcom/ss/android/medialib/qr/ScanSettings;)I

    move-result p0

    return p0

    :catchall_71
    move-exception v0

    move-object p0, v0

    :goto_73
    if-eqz v1, :cond_7e

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    :cond_7e
    throw p0

    :catch_7f
    :goto_7f
    if-eqz v1, :cond_8a

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_8a

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8a
    const/4 p0, -0x3

    return p0

    :catch_8c
    :goto_8c
    if-eqz v1, :cond_97

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_97

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_97
    const/4 p0, -0x2

    return p0
.end method

.method public stop()V
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/PicScanner;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 77
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/qr/PicScanner;->nativeStop(J)V

    return-void
.end method
