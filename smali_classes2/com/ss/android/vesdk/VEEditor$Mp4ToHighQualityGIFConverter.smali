.class Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mp4ToHighQualityGIFConverter"
.end annotation


# instance fields
.field private fps:I

.field mCallback:Lcom/ss/android/vesdk/VECommonCallback;

.field mInputFile:Ljava/lang/String;

.field mIsRunning:Z

.field private mIsTransparent:Z

.field mOutputFile:Ljava/lang/String;

.field mPaletteFile:Ljava/lang/String;

.field mRawDataFile:Ljava/lang/String;

.field private rawDataHeight:I

.field private rawDataWidth:I

.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;

.field private waterMarkFile:Ljava/lang/String;

.field private waterMarkHeight:I

.field private waterMarkOffsetX:I

.field private waterMarkOffsetY:I

.field private waterMarkWidth:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 4

    .line 7265
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->this$0:Lcom/ss/android/vesdk/VEEditor;

    .line 7266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7253
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    const/4 v0, 0x0

    .line 7255
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkFile:Ljava/lang/String;

    const/16 v1, 0x32

    .line 7256
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkWidth:I

    .line 7257
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkHeight:I

    const/16 v1, 0x64

    .line 7258
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetX:I

    .line 7259
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetY:I

    .line 7260
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    .line 7261
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataWidth:I

    .line 7262
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataHeight:I

    const/4 p1, -0x1

    .line 7263
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->fps:I

    .line 7267
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    .line 7268
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    .line 7269
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    .line 7270
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mRawDataFile:Ljava/lang/String;

    .line 7271
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 6

    .line 7274
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->this$0:Lcom/ss/android/vesdk/VEEditor;

    .line 7275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7253
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    const/4 v0, 0x0

    .line 7255
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkFile:Ljava/lang/String;

    const/16 v0, 0x32

    .line 7256
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkWidth:I

    .line 7257
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkHeight:I

    const/16 v0, 0x64

    .line 7258
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetX:I

    .line 7259
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetY:I

    .line 7260
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    .line 7261
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataWidth:I

    .line 7262
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataHeight:I

    const/4 p1, -0x1

    .line 7263
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->fps:I

    .line 7276
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    .line 7277
    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    .line 7278
    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 7279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 7335
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1007

    if-nez v0, :cond_125

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_125

    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    if-eqz v0, :cond_19

    goto/16 :goto_125

    :cond_19
    const/4 v0, 0x1

    .line 7341
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    .line 7344
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    if-eqz v0, :cond_3d

    .line 7346
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataWidth:I

    .line 7347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 7346
    const-string v4, "ffmpeg -f rawvideo -s %dx%d -pix_fmt rgba -y -i %s -vf palettegen=reserve_transparent=on %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 7349
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ffmpeg -y -i %s -vf palettegen %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    const/4 v3, 0x0

    .line 7353
    invoke-static {v0, v3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5f

    .line 7356
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    .line 7357
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz p0, :cond_130

    .line 7358
    const-string v3, "ffmpeg gen palette"

    invoke-interface {p0, v2, v0, v1, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 7364
    :cond_5f
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    if-eqz v0, :cond_88

    .line 7365
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataWidth:I

    .line 7366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->fps:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v5

    .line 7365
    const-string v6, "ffmpeg -f rawvideo -s %dx%d -pix_fmt rgba -r %d -y -i %s -i %s -lavfi paletteuse=dither=bayer %s"

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c9

    .line 7371
    :cond_88
    iget-object v7, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkFile:Ljava/lang/String;

    if-eqz v7, :cond_b7

    .line 7372
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    iget v8, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetX:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ffmpeg -y -i %s -i %s -i %s -filter_complex [2:v]scale=w=%d:h=%d[o0];[0:v][o0]overlay=x=%d-w/2:y=%d-h/2[o1];[o1][1:v]paletteuse -f gif %s"

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c9

    .line 7374
    :cond_b7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    iget-object v7, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ffmpeg -y -i %s -i %s -lavfi paletteuse -f gif %s"

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7381
    :goto_c9
    invoke-static {v0, v3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result v0

    .line 7382
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz v3, :cond_d6

    .line 7383
    const-string v5, "ffmepg convert to gif"

    invoke-interface {v3, v2, v0, v1, v5}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    .line 7386
    :cond_d6
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    if-eqz v0, :cond_122

    .line 7387
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 7388
    const-string v1, "VEEditor"

    if-eqz v0, :cond_ff

    .line 7389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear raw data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7391
    :cond_ff
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 7393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear palette:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7396
    :cond_122
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    return-void

    .line 7336
    :cond_125
    :goto_125
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz p0, :cond_130

    const/16 v0, -0xcd

    .line 7337
    const-string v3, "File is empty or running"

    invoke-interface {p0, v2, v0, v1, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_130
    return-void
.end method

.method public setCallback(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 7330
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method public setFps(I)V
    .registers 2

    .line 7294
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->fps:I

    return-void
.end method

.method public setInputFile(Ljava/lang/String;)V
    .registers 2

    .line 7317
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mInputFile:Ljava/lang/String;

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 5

    .line 7321
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    .line 7322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 7323
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    return-void

    .line 7326
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mOutputFile:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mPaletteFile:Ljava/lang/String;

    return-void
.end method

.method public setRawDataHeight(I)V
    .registers 2

    .line 7291
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataHeight:I

    return-void
.end method

.method public setRawDataWidth(I)V
    .registers 2

    .line 7287
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->rawDataWidth:I

    return-void
.end method

.method public setTransparentMode(Z)V
    .registers 2

    .line 7283
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsTransparent:Z

    return-void
.end method

.method public setWaterMarkFile(Ljava/lang/String;)V
    .registers 2

    .line 7297
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkFile:Ljava/lang/String;

    return-void
.end method

.method public setWaterMarkHeight(I)V
    .registers 2

    .line 7305
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkHeight:I

    return-void
.end method

.method public setWaterMarkOffsetX(I)V
    .registers 2

    .line 7309
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetX:I

    return-void
.end method

.method public setWaterMarkOffsetY(I)V
    .registers 2

    .line 7313
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkOffsetY:I

    return-void
.end method

.method public setWaterMarkWidth(I)V
    .registers 2

    .line 7301
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->waterMarkWidth:I

    return-void
.end method
