.class Lcom/ss/android/vesdk/util/VEFrameShooter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/util/VEFrameShooter;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/util/VEFrameShooter;

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$shotHDScreenStartTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/util/VEFrameShooter;JLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 5

    .line 156
    iput-object p1, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->this$0:Lcom/ss/android/vesdk/util/VEFrameShooter;

    iput-wide p2, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->val$shotHDScreenStartTime:J

    iput-object p4, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 8

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->val$shotHDScreenStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-string v3, "te_record_shot_hd_screen_time"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 160
    iget-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->this$0:Lcom/ss/android/vesdk/util/VEFrameShooter;

    # getter for: Lcom/ss/android/vesdk/util/VEFrameShooter;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/vesdk/util/VEFrameShooter;->access$300(Lcom/ss/android/vesdk/util/VEFrameShooter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_20

    .line 162
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    .line 165
    :cond_20
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$1;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-interface {p0, p1, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void
.end method
