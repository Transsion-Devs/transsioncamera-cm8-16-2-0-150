.class public Lcom/transsion/camera/app/common/mode/NullImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NullCaptureData"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .registers 2

    .line 47
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData algorithmMigrate"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 2

    .line 116
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData checkNotifyBgOfflineErr"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)Landroid/net/Uri;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .registers 4

    .line 27
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isNull()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onCameraClosed()V
    .registers 2

    .line 126
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData onCameraClosed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 2

    .line 121
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onCaptureCompleted"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 2

    .line 106
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onCaptureFailed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(IZJ)V
    .registers 5

    .line 101
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onCaptureStarted"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStart()V
    .registers 2

    .line 136
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onContinuousShotStart"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    .line 141
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onContinuousShotStop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .registers 2

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .registers 2

    .line 131
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTakePicture"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    .line 90
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onUpdateFastThumbSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    .line 84
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onUpdateThumbnailSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public pause()V
    .registers 2

    .line 42
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public removeCaptureInfo(Z)V
    .registers 2

    .line 111
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData removeCaptureInfo"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 37
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 32
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updatePicSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 5

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updatePicSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePostAlgoPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQcomJpegSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQcomPicSurface(Landroid/util/Size;IIZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQcomRawSurface(Ljava/util/List;IZ)[Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 96
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updateStorageOperator"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 78
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updateYuvPicSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
