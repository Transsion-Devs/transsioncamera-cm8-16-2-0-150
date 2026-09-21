.class Lcom/ss/android/vesdk/TERecorder$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

.field final synthetic val$strFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 5

    .line 2617
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$strFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 7

    .line 2620
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_13

    .line 2622
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return-void

    .line 2626
    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2628
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string p3, "ve_camera_enable_preview_pure_color_background"

    invoke-virtual {p2, p3, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_74

    .line 2629
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string p3, "ve_camera_enable_preview_fake_frame"

    invoke-virtual {p2, p3, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_74

    .line 2631
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$2100(Lcom/ss/android/vesdk/TERecorder;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2632
    :try_start_40
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3}, Lcom/ss/android/vesdk/TERecorder;->access$2200(Lcom/ss/android/vesdk/TERecorder;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_66

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3}, Lcom/ss/android/vesdk/TERecorder;->access$2200(Lcom/ss/android/vesdk/TERecorder;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_66

    .line 2633
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3}, Lcom/ss/android/vesdk/TERecorder;->access$2200(Lcom/ss/android/vesdk/TERecorder;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2634
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v2}, Lcom/ss/android/vesdk/TERecorder;->access$2202(Lcom/ss/android/vesdk/TERecorder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_72

    .line 2637
    :cond_66
    :goto_66
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0}, Lcom/ss/android/vesdk/TERecorder;->access$2202(Lcom/ss/android/vesdk/TERecorder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2638
    monitor-exit p2

    goto :goto_74

    :goto_72
    monitor-exit p2
    :try_end_73
    .catchall {:try_start_40 .. :try_end_73} :catchall_64

    throw p0

    .line 2641
    :cond_74
    :goto_74
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$strFileName:Ljava/lang/String;

    const-string p3, ".rgba"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 2642
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 2643
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 2645
    :try_start_89
    new-instance p3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$strFileName:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2647
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_9a} :catch_9d
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_9a} :catch_9b

    goto :goto_ae

    :catch_9b
    move-exception p2

    goto :goto_9f

    :catch_9d
    move-exception p2

    goto :goto_a3

    .line 2651
    :goto_9f
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ae

    .line 2649
    :goto_a3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ae

    .line 2654
    :cond_a7
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$strFileName:Ljava/lang/String;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p2, p3}, Lcom/ss/android/medialib/common/ImageUtils;->saveBitmapWithPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 2656
    :goto_ae
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2657
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$11;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    invoke-interface {p0, v1}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return-void
.end method
