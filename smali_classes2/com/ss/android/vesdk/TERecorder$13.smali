.class Lcom/ss/android/vesdk/TERecorder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$directBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$finalNeedOriginPic:Z

.field final synthetic val$isSyncCapture:Z

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$shotHDScreenStartTime:J

.field final synthetic val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;JZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)V
    .registers 9

    .line 2763
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$13;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$shotHDScreenStartTime:J

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$isSyncCapture:Z

    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$directBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    iput-boolean p7, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$finalNeedOriginPic:Z

    iput-object p8, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 14

    .line 2766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$shotHDScreenStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-string v3, "te_record_shot_hd_screen_time"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2767
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$13;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2769
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$isSyncCapture:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2b

    .line 2770
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$directBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_2b

    if-ne p2, v1, :cond_2b

    if-ne p3, v1, :cond_2b

    .line 2771
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-interface {p0, v0, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_2b
    if-nez p1, :cond_34

    .line 2777
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    .line 2780
    :cond_34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2781
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-interface {v1, v0, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    .line 2784
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$finalNeedOriginPic:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$13;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mNeedTwoFrame:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2300(Lcom/ss/android/vesdk/TERecorder;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-wide/16 v7, 0x0

    .line 2786
    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 2787
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$13;->val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    invoke-interface {p0, p1, v2}, Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;->onShotScreen(Lcom/ss/android/ttve/model/VEFrame;I)V

    :cond_5c
    return-void
.end method
