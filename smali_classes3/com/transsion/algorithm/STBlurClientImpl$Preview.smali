.class Lcom/transsion/algorithm/STBlurClientImpl$Preview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;
.implements Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview$GLPreviewController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/algorithm/STBlurClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Preview"
.end annotation


# instance fields
.field private GRADUAL_BLUR_WEIGHT:[F

.field private mContext:Landroid/content/Context;

.field private final mProcessFrame:I

.field private mProcessFrameNumber:I

.field private final mReleaseLock:Ljava/lang/Object;

.field private volatile mRenderInit:Z

.field private mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

.field private mYuvData:[B

.field final synthetic this$0:Lcom/transsion/algorithm/STBlurClientImpl;


# direct methods
.method constructor <init>(Lcom/transsion/algorithm/STBlurClientImpl;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 133
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 114
    new-array p1, p1, [F

    fill-array-data p1, :array_2a

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrameNumber:I

    .line 132
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mReleaseLock:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0, p3}, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->checkLicense(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/app/common/R$integer;->stblur_preview_process_frame:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrame:I

    return-void

    nop

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkLicense(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_b

    .line 141
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "no license file !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    :cond_b
    invoke-static {p1}, Lcom/singleblur/faceapi/LicenseHelper;->initLicense(Ljava/lang/String;)I

    move-result p0

    .line 144
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "license Check resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method


# virtual methods
.method public drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 9

    .line 288
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 289
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "draw mSTBlurPreview is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 293
    :cond_f
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mRenderInit:Z

    if-eqz p1, :cond_47

    .line 294
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSTBlurRender surfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p1, p5, p4}, Lcom/singleblur/blur/STBlurPreview;->initRender(II)I

    move-result p1

    if-eqz p1, :cond_45

    .line 297
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur initRender failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 300
    :cond_45
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mRenderInit:Z

    :cond_47
    const/4 p1, 0x0

    const/4 p4, 0x1

    if-eqz p3, :cond_76

    if-eq p3, p4, :cond_4e

    goto :goto_9e

    .line 320
    :cond_4e
    iget-object p3, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p5, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {v1}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmHasFace(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmSTBlurOn(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_65

    :cond_63
    move p0, v0

    goto :goto_66

    :cond_65
    :goto_65
    move p0, p4

    :goto_66
    invoke-virtual {p3, p2, p5, p1, p0}, Lcom/singleblur/blur/STBlurPreview;->processTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9e

    .line 322
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur process2DTexture failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 305
    :cond_76
    iget-object p3, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p5, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {v1}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmHasFace(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmSTBlurOn(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_8d

    :cond_8b
    move p0, v0

    goto :goto_8e

    :cond_8d
    :goto_8d
    move p0, p4

    :goto_8e
    invoke-virtual {p3, p2, p5, p1, p0}, Lcom/singleblur/blur/STBlurPreview;->processOESTextureGradual(I[F[IZ)I

    move-result p0

    if-eqz p0, :cond_9e

    .line 307
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "STBlur processOESTexture failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_9e
    :goto_9e
    return p4
.end method

.method public initPreviewBlurGLThread()V
    .registers 5

    .line 266
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/singleblur/blur/STBlurPreview;

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/4 v0, 0x0

    .line 268
    invoke-static {v0}, Lcom/singleblur/blur/STBlurPreview;->setDebug(Z)I

    .line 269
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {v1, v0}, Lcom/singleblur/blur/STBlurPreview;->setDebugMask(Z)I

    .line 270
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    const/16 v1, 0x1001

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    .line 271
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmFrontCamera(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/singleblur/blur/STBlurPreview;->setFrontCamera(Z)V

    return-void
.end method

.method public initRender()V
    .registers 2

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mRenderInit:Z

    .line 163
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initRender"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initSTBlur()V
    .registers 2

    .line 151
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initSTBlur"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public processPreviewBlur([BIII)V
    .registers 14

    .line 168
    iget v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrameNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrameNumber:I

    iget v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrame:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_c

    return-void

    .line 172
    :cond_c
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mYuvData:[B

    const/16 v0, 0x11

    if-ne p4, v0, :cond_17

    .line 176
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/16 v0, 0x18

    goto :goto_1b

    .line 179
    :cond_17
    sget-object p4, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/16 v0, 0x10

    :goto_1b
    if-nez p1, :cond_27

    .line 183
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "processPreviewBlur mYuvData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_27
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 188
    :try_start_2a
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-nez v1, :cond_3c

    .line 189
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "processPreviewBlur mSTBlurPreview is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    monitor-exit p1

    return-void

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_58

    .line 192
    :cond_3c
    invoke-virtual {v1, p4}, Lcom/singleblur/blur/STBlurPreview;->setFormat(Lcom/singleblur/faceapi/model/CvPixelFormat;)V

    .line 193
    iget-object p4, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    invoke-virtual {p4, v0}, Lcom/singleblur/blur/STBlurPreview;->setSegmentOption(I)V

    .line 194
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    iget-object v2, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mYuvData:[B

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->this$0:Lcom/transsion/algorithm/STBlurClientImpl;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$fgetmFrontCamera(Lcom/transsion/algorithm/STBlurClientImpl;)Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V

    .line 196
    monitor-exit p1

    return-void

    :goto_58
    monitor-exit p1
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_39

    throw p0
.end method

.method public unInitPreviewBlurGLThread()V
    .registers 3

    .line 276
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "unInitPreviewBlurGLThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_d
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-eqz v1, :cond_1a

    .line 279
    invoke-virtual {v1}, Lcom/singleblur/blur/STBlurPreview;->destroy()I

    const/4 v1, 0x0

    .line 280
    iput-object v1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 282
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public unInitSTBlur()V
    .registers 3

    .line 156
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "unInitSTBlur"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mProcessFrameNumber:I

    return-void
.end method

.method public updateBlurLevel(I)V
    .registers 5

    .line 201
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBlurLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_66

    return-void

    .line 204
    :pswitch_1e
    new-array p1, v0, [F

    fill-array-data p1, :array_7c

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 207
    :pswitch_26
    new-array p1, v0, [F

    fill-array-data p1, :array_88

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 210
    :pswitch_2e
    new-array p1, v0, [F

    fill-array-data p1, :array_94

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 213
    :pswitch_36
    new-array p1, v0, [F

    fill-array-data p1, :array_a0

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 216
    :pswitch_3e
    new-array p1, v0, [F

    fill-array-data p1, :array_ac

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 219
    :pswitch_46
    new-array p1, v0, [F

    fill-array-data p1, :array_b8

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 222
    :pswitch_4e
    new-array p1, v0, [F

    fill-array-data p1, :array_c4

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 225
    :pswitch_56
    new-array p1, v0, [F

    fill-array-data p1, :array_d0

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    .line 228
    :pswitch_5e
    new-array p1, v0, [F

    fill-array-data p1, :array_dc

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->GRADUAL_BLUR_WEIGHT:[F

    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch

    :array_7c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_94
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data

    :array_a0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
    .end array-data

    :array_ac
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
    .end array-data

    :array_c4
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f4ccccd    # 0.8f
        0x3f400000    # 0.75f
        0x3f333333    # 0.7f
    .end array-data

    :array_d0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f266666    # 0.65f
        0x3f19999a    # 0.6f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_dc
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f000000    # 0.5f
        0x3ee66666    # 0.45f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public updateKernel(I)V
    .registers 5

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_2c

    goto :goto_8

    :pswitch_5
    const/4 v0, 0x7

    goto :goto_8

    :pswitch_7
    const/4 v0, 0x6

    .line 258
    :goto_8
    :pswitch_8
    invoke-static {}, Lcom/transsion/algorithm/STBlurClientImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKernel,level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClientImpl$Preview;->mSTBlurPreview:Lcom/singleblur/blur/STBlurPreview;

    if-eqz p0, :cond_2b

    const/16 p1, 0x1006

    int-to-float v0, v0

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    :cond_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
