.class Lcom/ss/android/vesdk/TECameraVideoRecorder$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBufferArrivedCount:I

.field private final mInput:[[B

.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

.field final synthetic val$frameTotal:I

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ILcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;J)V
    .registers 7

    .line 4589
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$frameTotal:I

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-wide p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4591
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mBufferArrivedCount:I

    .line 4592
    new-array p1, p2, [[B

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mInput:[[B

    return-void
.end method


# virtual methods
.method public onBufferFrameArrived(III[B)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v8, p4

    .line 4596
    iget-object v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mInput:[[B

    iget v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mBufferArrivedCount:I

    aput-object v8, v3, v4

    const/4 v9, 0x1

    add-int/2addr v4, v9

    .line 4597
    iput v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mBufferArrivedCount:I

    .line 4599
    iget v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$frameTotal:I

    const/4 v10, 0x0

    if-ne v4, v3, :cond_19

    move v3, v9

    goto :goto_1a

    :cond_19
    move v3, v10

    .line 4600
    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBufferFrameArrived, w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isEnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "TECameraVideoRecorder"

    invoke-static {v11, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a5

    .line 4603
    iget v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$frameTotal:I

    iget-object v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object v5, v3, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->vrsrModelPath:Ljava/lang/String;

    iget-object v6, v3, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->skinSegModelPath:Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mInput:[[B

    const/4 v3, 0x6

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->applyLensNightEnhance(IIIILjava/lang/String;Ljava/lang/String;[[B)[B

    move-result-object v3

    if-nez v3, :cond_5c

    .line 4605
    iget-object v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mInput:[[B

    aget-object v3, v3, v10

    .line 4606
    const-string v4, "captureNightEnhance failed, use first buffer"

    invoke-static {v11, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    :cond_5c
    iget-object v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;
    invoke-static {v4, v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5700(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    .line 4610
    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v5, :cond_6d

    .line 4611
    iget v6, v4, Lcom/ss/android/vesdk/VESize;->height:I

    iget v7, v4, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {v5, v6, v7}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    .line 4615
    :cond_6d
    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-boolean v5, v5, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->directRender:Z

    if-eqz v5, :cond_7b

    .line 4616
    new-instance v5, Lcom/ss/android/medialib/camera/ImageFrame;

    const/4 v6, -0x3

    invoke-direct {v5, v3, v6, v1, v2}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    move-object v12, v5

    goto :goto_85

    .line 4618
    :cond_7b
    invoke-static {v3, v1, v2}, Lcom/ss/android/vesdk/VEImageUtils;->convertNv21ToJpeg([BII)[B

    move-result-object v5

    .line 4619
    new-instance v6, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-direct {v6, v5, v9, v1, v2}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    move-object v12, v6

    .line 4621
    :goto_85
    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v10

    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEPreviewSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v11

    iget v13, v4, Lcom/ss/android/vesdk/VESize;->height:I

    iget v14, v4, Lcom/ss/android/vesdk/VESize;->width:I

    new-instance v4, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;

    invoke-direct {v4, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$61;)V

    const/4 v15, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v10 .. v16}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPictureToBitmap(ZLcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    goto :goto_a6

    :cond_a5
    const/4 v3, 0x0

    .line 4646
    :goto_a6
    iget-object v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-boolean v4, v4, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->enableDump:Z

    if-eqz v4, :cond_fc

    .line 4647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object v5, v5, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->dumpPathDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/night_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$timestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->mBufferArrivedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v1, v2, v4}, Lcom/ss/android/vesdk/VEImageUtils;->dumpNV21([BIILjava/lang/String;)V

    if-eqz v3, :cond_fc

    .line 4649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$config:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    iget-object v5, v5, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->dumpPathDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/night_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$timestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_final.jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v2, v0}, Lcom/ss/android/vesdk/VEImageUtils;->dumpNV21([BIILjava/lang/String;)V

    :cond_fc
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3

    .line 4656
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_15

    .line 4657
    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    const/16 v0, -0xbb8

    .line 4658
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    return-void

    :cond_f
    const/4 p1, 0x1

    const/16 v0, -0x3e9

    .line 4661
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_15
    return-void
.end method
