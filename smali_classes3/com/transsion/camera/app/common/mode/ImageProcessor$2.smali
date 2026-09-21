.class Lcom/transsion/camera/app/common/mode/ImageProcessor$2;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

.field final synthetic val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

.field final synthetic val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 6

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$contentValues:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .registers 14

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$contentValues:Landroid/content/ContentValues;

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$mdoMediaScanner(Lcom/transsion/camera/app/common/mode/ImageProcessor;Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 370
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 372
    :cond_26
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFileSaved] mPictureCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v4, v4, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$contentValues:Landroid/content/ContentValues;

    const/4 v10, 0x0

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v10}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$monBackgroundImageSave(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V

    const/4 p1, 0x0

    if-nez v9, :cond_60

    .line 375
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p2, p2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v2

    invoke-interface {p2, v7, v2, p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 377
    :cond_60
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fputmIsSavingJepg(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V

    .line 378
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fgetmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 379
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance v2, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object v2, p2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 380
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fputmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V

    .line 382
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->releaseImageData()V

    .line 385
    :cond_8e
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 386
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p0

    const-string p1, "CAM_CAPTURE"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->end(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x3ed

    const-string p2, "shot_to_jpeg"

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(ILjava/lang/String;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getSaverTimeout()I

    move-result p2

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-lez p0, :cond_ca

    .line 389
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 390
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    :cond_ca
    return-void
.end method
