.class Lcom/transsion/camera/feature/mode/video/VideoMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 1352
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture([B[BZI)V
    .registers 11

    const/4 v0, 0x0

    const v1, 0x14000

    if-eqz p1, :cond_3d

    .line 1362
    array-length v2, p1

    if-lez v2, :cond_3d

    .line 1363
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1364
    new-instance v3, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 1365
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v4

    const-string v5, "key_location"

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 1366
    invoke-virtual {v3, v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 1367
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v4, p4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$mconvertJpegOrientation(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 1368
    invoke-virtual {v3, p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateFlashState(Z)V

    .line 1369
    invoke-virtual {v3, v2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 1370
    invoke-static {p1, v2, v3}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 1371
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v2, p1, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$msaveJpegToFile(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V

    :cond_3d
    if-eqz p2, :cond_63

    .line 1374
    array-length p1, p2

    if-lez p1, :cond_63

    .line 1375
    invoke-static {p2, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1376
    new-instance v1, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 1377
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v2, p4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$mconvertJpegOrientation(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I

    move-result p4

    invoke-virtual {v1, p4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 1378
    invoke-virtual {v1, p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateFlashState(Z)V

    .line 1379
    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 1380
    invoke-static {p2, p1, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 1381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$msaveJpegToFile(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V

    :cond_63
    return-void
.end method

.method public onRecording(I[F)V
    .registers 4

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$fgetmTextureUpdater(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1356
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$fgetmTextureUpdater(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;->updateTexture(II[F)V

    :cond_18
    return-void
.end method
