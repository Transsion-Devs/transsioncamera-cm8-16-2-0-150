.class Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 105
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    return-void

    .line 108
    :cond_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-ne v1, v3, :cond_14

    move v7, v3

    goto :goto_15

    :cond_14
    move v7, v2

    .line 109
    :goto_15
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "DOC_PHOTO_HANDLE start "

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v5

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    .line 112
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_240

    sget-boolean v4, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v4, :cond_41

    goto/16 :goto_240

    .line 118
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDocModeDebugSupport()Z

    move-result v4

    const/16 v11, 0x64

    if-eqz v4, :cond_6e

    .line 119
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    .line 120
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 123
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    # invokes: Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V

    .line 125
    :cond_6e
    const-string v4, "scan start "

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;->scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;

    move-result-object v4

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan done scan = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_103

    .line 129
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v5, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmShouldDisplay(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)V

    .line 131
    aget-object v2, v4, v2

    iget v12, v2, Landroid/graphics/Point;->x:I

    .line 132
    iget v13, v2, Landroid/graphics/Point;->y:I

    .line 133
    aget-object v2, v4, v3

    iget v14, v2, Landroid/graphics/Point;->x:I

    .line 134
    iget v15, v2, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    .line 135
    aget-object v2, v4, v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 136
    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v5, 0x3

    .line 137
    aget-object v4, v4, v5

    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 138
    iget v4, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v2

    move/from16 v16, v3

    move/from16 v19, v4

    move/from16 v18, v5

    filled-new-array/range {v12 .. v19}, [I

    move-result-object v2

    .line 139
    const-string v3, "rectifyByBitmap start"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v4, v3, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/youtu/ocr/ximage/DocDetector;->rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)V

    .line 141
    const-string v2, "rectifyByBitmap done"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDocModeDebugSupport()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 143
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    .line 144
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v11, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 146
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 147
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    # invokes: Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$300(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V

    goto :goto_108

    .line 150
    :cond_103
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmShouldDisplay(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)V

    .line 152
    :cond_108
    :goto_108
    const-string/jumbo v2, "xnetEnhance start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getDocModeDebugIntensity()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 155
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmIntensity(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Ljava/lang/String;)V

    .line 157
    :cond_11d
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v3, v2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    const-string v4, "KEY_COLORFAST_INTENSITY"

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmIntensity(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/youtu/ocr/ximage/DocDetector;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v3, v2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lcom/youtu/ocr/ximage/DocDetector;->xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xnetEnhance end  mIntensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmIntensity(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    .line 161
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v11, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 164
    const-string v3, "DOC_PHOTO_HANDLE end "

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object v1

    .line 167
    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    .line 168
    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v4

    .line 169
    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COLOR_SPACE:I

    invoke-virtual {v1, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v5

    .line 172
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a3

    .line 173
    const-string v6, "1"

    goto :goto_1a5

    .line 175
    :cond_1a3
    const-string v6, "0"

    .line 177
    :goto_1a5
    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "facing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    const v6, 0x14000

    .line 179
    invoke-static {v2, v6}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 181
    new-instance v8, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v8}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 182
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    # getter for: Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;
    invoke-static {v9}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$400(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v9

    const-string v10, "key_location"

    invoke-virtual {v9, v10}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 183
    invoke-virtual {v8, v9}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    const/4 v9, -0x1

    .line 184
    invoke-virtual {v8, v9}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 185
    invoke-virtual {v8, v6}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v8, v9}, Lcom/transsion/camera/adapter/CameraResults;->setOtherTags(Ljava/util/List;)V

    .line 193
    invoke-static {v2, v6, v8}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v5

    .line 194
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    # getter for: Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$500(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doc_SceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SceneType"

    .line 195
    invoke-static {v5, v3}, Lcom/transsion/camera/utils/ExifUtils;->getExifStringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1, v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[B)V

    .line 197
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmShouldDisplay(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Z

    move-result v1

    if-nez v1, :cond_237

    .line 198
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    # getter for: Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$600(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v4

    move v6, v7

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    move v7, v6

    .line 199
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fputmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)V

    .line 201
    :cond_237
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    # invokes: Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V

    return-void

    .line 113
    :cond_240
    :goto_240
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    # invokes: Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V

    .line 114
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    # getter for: Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v4

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v5

    move v6, v7

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    .line 115
    const-string v0, "DOC_PHOTO_HANDLE error "

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
