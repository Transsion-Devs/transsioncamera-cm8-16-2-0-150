.class Lcom/ss/android/vesdk/TERecorder$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$directBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isSyncCapture:Z

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$shotScreenStartTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;JZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 7

    .line 2690
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$12;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$shotScreenStartTime:J

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$isSyncCapture:Z

    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$directBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 8

    .line 2693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$shotScreenStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-string v3, "te_record_shot_screen_time"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2694
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$12;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$2000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2696
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$isSyncCapture:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2b

    .line 2697
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$directBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_2b

    if-ne p2, v1, :cond_2b

    if-ne p3, v1, :cond_2b

    .line 2698
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-interface {p0, v0, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_2b
    if-nez p1, :cond_34

    .line 2704
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    .line 2708
    :cond_34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2709
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$12;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-interface {p0, p1, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void
.end method
