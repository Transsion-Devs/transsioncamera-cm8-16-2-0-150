.class Lcom/ss/android/vesdk/TECameraVideoRecorder$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$needPreviewAfterShotScreen:Z

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$shotScreenStartTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;JZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 6

    .line 4153
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-wide p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$shotScreenStartTime:J

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$needPreviewAfterShotScreen:Z

    iput-object p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/graphics/Bitmap;I)V
    .registers 7

    .line 4156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$shotScreenStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-string v3, "te_record_shot_screen_time"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-nez p2, :cond_13

    .line 4157
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$needPreviewAfterShotScreen:Z

    if-eqz v0, :cond_24

    .line 4158
    :cond_13
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4159
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    .line 4163
    :cond_24
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "TECam_shotScreen_0"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5500(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4165
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    if-eqz p0, :cond_32

    .line 4166
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    :cond_32
    return-void
.end method
