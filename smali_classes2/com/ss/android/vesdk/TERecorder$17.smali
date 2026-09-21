.class Lcom/ss/android/vesdk/TERecorder$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBufferArrivedCount:I

.field private final mInput:[[B

.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

.field final synthetic val$frameTotal:I

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;ILcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;J)V
    .registers 7

    .line 3032
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$frameTotal:I

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-wide p5, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3033
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->mBufferArrivedCount:I

    .line 3034
    new-array p1, p2, [[B

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->mInput:[[B

    return-void
.end method


# virtual methods
.method public onBufferFrameArrived(III[B)V
    .registers 14

    .line 3038
    iget-object v6, p0, Lcom/ss/android/vesdk/TERecorder$17;->mInput:[[B

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder$17;->mBufferArrivedCount:I

    aput-object p4, v6, v0

    const/4 v7, 0x1

    add-int/2addr v0, v7

    .line 3039
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder$17;->mBufferArrivedCount:I

    .line 3041
    iget v3, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$frameTotal:I

    const/4 v8, 0x0

    if-ne v0, v3, :cond_11

    move v0, v7

    goto :goto_12

    :cond_11
    move v0, v8

    :goto_12
    if-eqz v0, :cond_6e

    .line 3044
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object v4, v0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->vrsrModelPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->skinSegModelPath:Ljava/lang/String;

    const/4 v2, 0x6

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->applyLensNightEnhance(IIIILjava/lang/String;Ljava/lang/String;[[B)[B

    move-result-object p1

    move v2, v1

    move v1, v0

    if-nez p1, :cond_30

    .line 3046
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->mInput:[[B

    aget-object p1, p1, v8

    .line 3047
    const-string p2, "TERecorder"

    const-string v0, "captureNightEnhance failed, use first buffer"

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    move-object v0, p1

    .line 3050
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;
    invoke-static {p1, v1, v2}, Lcom/ss/android/vesdk/TERecorder;->access$2500(Lcom/ss/android/vesdk/TERecorder;II)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    .line 3051
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p2, :cond_42

    .line 3052
    iget v3, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-interface {p2, v3, p1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    .line 3055
    :cond_42
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->directRender:Z

    if-eqz p1, :cond_55

    .line 3056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV21:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    move-object p2, v0

    goto :goto_65

    :cond_55
    move v3, p3

    move-object p2, v0

    .line 3058
    invoke-static {p2, v1, v2}, Lcom/ss/android/vesdk/VEImageUtils;->convertNv21ToJpeg([BII)[B

    move-result-object v0

    .line 3059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 3061
    :goto_65
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$17;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->renderPictureFrameWrapper(Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    invoke-static {p3, p1, v7, v0}, Lcom/ss/android/vesdk/TERecorder;->access$2400(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    move-object v0, p2

    goto :goto_71

    :cond_6e
    move v1, p1

    move v2, p2

    const/4 v0, 0x0

    .line 3064
    :goto_71
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->enableDump:Z

    if-eqz p1, :cond_c7

    .line 3065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object p2, p2, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->dumpPathDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/night_tmp_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$timestamp:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->mBufferArrivedCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v1, v2, p1}, Lcom/ss/android/vesdk/VEImageUtils;->dumpNV21([BIILjava/lang/String;)V

    if-eqz v0, :cond_c7

    .line 3067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object p2, p2, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->dumpPathDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/night_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$timestamp:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_final.jpg"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/vesdk/VEImageUtils;->dumpNV21([BIILjava/lang/String;)V

    :cond_c7
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3

    .line 3074
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$17;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_15

    .line 3075
    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    const/16 v0, -0xbb8

    .line 3076
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    return-void

    :cond_f
    const/4 p1, 0x1

    const/16 v0, -0x3e9

    .line 3079
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_15
    return-void
.end method
