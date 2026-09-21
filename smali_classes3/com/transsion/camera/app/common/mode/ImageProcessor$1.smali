.class Lcom/transsion/camera/app/common/mode/ImageProcessor$1;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;
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

.field final synthetic val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

.field final synthetic val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 7

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$contentValues:Landroid/content/ContentValues;

    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .registers 16

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    .line 323
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getBGImageSavedListener()Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    move-result-object v4

    if-nez v4, :cond_48

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[onFileSaved] BGImageSavedListener is null"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v3

    goto :goto_55

    .line 327
    :cond_48
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 330
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v4, v4, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onFileSaved] mPictureCallback:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v6, v6, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalInfo:Lcom/transsion/camera/app/common/mode/PictureInfo;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$qualityInfo:Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    iget-object v10, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$contentValues:Landroid/content/ContentValues;

    const/4 v12, 0x0

    move-object v9, p1

    move v11, p2

    invoke-static/range {v6 .. v12}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$monBackgroundImageSave(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V

    const/4 p1, 0x1

    if-nez v11, :cond_89

    .line 333
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p2, p2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p2, v9, v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 335
    :cond_89
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p2, p2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    instance-of p2, p2, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    if-eqz p2, :cond_b0

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fgetmSubPictureCallBack(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object p2

    if-eqz p2, :cond_b0

    .line 337
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fgetmSubPictureCallBack(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object p2

    invoke-interface {p2, v9, v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance p2, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fputmSubPictureCallBack(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    .line 340
    :cond_b0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fputmIsSavingJepg(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fgetmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z

    move-result p1

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fgetmIsPictureCallbackReleasePending(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z

    move-result p1

    if-nez p1, :cond_e1

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 342
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->getQuickCapturingCount()I

    move-result p1

    if-gtz p1, :cond_e1

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance p2, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object p2, p1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$fputmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V

    .line 346
    :cond_e1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-eqz p1, :cond_f0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalMotionPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->releaseImageData()V

    .line 349
    :cond_f0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 350
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p0

    const-string p1, "CAM_CAPTURE"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->end(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x3ed

    const-string p2, "shot_to_jpeg"

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(ILjava/lang/String;)V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getSaverTimeout()I

    move-result p2

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-lez p0, :cond_12c

    .line 353
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 354
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    :cond_12c
    return-void
.end method

.method public removeProcessingMedia()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$processMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    return-void
.end method
