.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 2

    .line 3490
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveVideoSaveCancelled(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 5

    .line 3493
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLiveVideoSaveCancelled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3494
    const-string v0, "empty"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V

    return-void
.end method

.method public onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V
    .registers 7

    .line 3500
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onLiveVideoSaveCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3501
    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->fillVideoPath(Ljava/lang/String;J)V

    .line 3503
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_17

    .line 3504
    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    :cond_17
    return-void
.end method

.method public onLiveVideoSaveException(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/Throwable;)V
    .registers 5

    .line 3510
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p2, p2, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onLiveVideoSaveException"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3511
    const-string p2, "empty"

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$4;->onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V

    return-void
.end method
