.class public abstract Lcom/transsion/camera/feature/common/BasePreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# static fields
.field private static final BYTES_PER_PIXEL_FRO_BGR:I = 0x3

.field private static final DUMP_DIR:Ljava/lang/String; = "/sdcard/dump/"

.field private static final DUMP_FILE_NAME:Ljava/lang/String; = "StitchThumbnail"

.field private static final DUMP_FILE_SUFFIX:Ljava/lang/String; = ".bgr"

.field private static final DUMP_STITCH_THUMBNAIL:Z

.field private static final DUMP_STITCH_THUMBNAIL_PROPERTY:Ljava/lang/String; = "debug.camera.dump_stitch_thumbnail"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

.field protected mBgrBuffer:Ljava/nio/ByteBuffer;

.field protected mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

.field protected volatile mCapturing:Z

.field protected final mLock:Ljava/lang/Object;

.field protected volatile mOrientation:I

.field protected mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

.field private volatile mResumed:Z

.field protected mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

.field protected mThumbHeight:I

.field protected mThumbWidth:I

.field protected volatile mUIReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BasePreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 45
    const-string v0, "debug.camera.dump_stitch_thumbnail"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/transsion/camera/feature/common/BasePreview;->DUMP_STITCH_THUMBNAIL:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private clearBgrBuffer()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f

    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    .line 168
    iput v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    :cond_f
    return-void
.end method

.method private dumpStitchThumbnail([BII)V
    .registers 5

    .line 143
    new-instance p0, Ljava/io/File;

    const-string v0, "/sdcard/dump/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 145
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dumpStitchThumbnail mkdir failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sdcard/dump/StitchThumbnail_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".bgr"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    :try_start_46
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_5c

    .line 150
    :try_start_4b
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_52

    .line 151
    :try_start_4e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c

    return-void

    :catchall_52
    move-exception p0

    .line 149
    :try_start_53
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception p0

    .line 152
    sget-object p1, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dumpStitchThumbnail exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onThumbnailUpdateBgr([BIIII)V
    .registers 9

    .line 116
    iput p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    .line 117
    iput p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    .line 119
    sget-boolean v0, Lcom/transsion/camera/feature/common/BasePreview;->DUMP_STITCH_THUMBNAIL:Z

    if-eqz v0, :cond_b

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/common/BasePreview;->dumpStitchThumbnail([BII)V

    :cond_b
    mul-int v0, p4, p5

    mul-int/lit8 v0, v0, 0x3

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_20

    .line 125
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    .line 126
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_20
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x3

    if-le v1, v0, :cond_55

    .line 132
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onThumbnailUpdateBgr error dataWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method protected clearBuffer()V
    .registers 3

    .line 157
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearBuffer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_a
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBgrBuffer()V

    .line 160
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p0
.end method

.method protected createGLProgram()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    if-nez v0, :cond_b

    .line 228
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;

    invoke-direct {v0}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-nez v0, :cond_16

    .line 231
    new-instance v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-direct {v0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    .line 233
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_23

    .line 234
    new-instance v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    sget-object v1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;-><init>(Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    :cond_23
    return-void
.end method

.method protected destroyGLProgram()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 241
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->release()V

    .line 242
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    .line 244
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-eqz v0, :cond_13

    .line 245
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->release()V

    .line 246
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    .line 248
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    if-eqz v0, :cond_1c

    .line 249
    invoke-interface {v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->deleteRecycledResources()V

    .line 250
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    .line 252
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method protected abstract drawBackground(II)V
.end method

.method protected abstract drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
.end method

.method public final modeInit()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_10

    .line 78
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_10
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public modeInitCallback()V
    .registers 1

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    return-void
.end method

.method public final modeUnInit()V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-nez p0, :cond_10

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUnInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_10
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    .line 212
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 3

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method public onCaptureFailed()V
    .registers 3

    .line 187
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 174
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    return-void
.end method

.method public onCaptureStop()V
    .registers 3

    .line 181
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    return-void
.end method

.method protected final onThumbnailUpdate([BIIII)V
    .registers 8

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdateBgr([BIIII)V

    .line 111
    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8

    throw p0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    return-void
.end method

.method public readyUI()V
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iput p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    return-void
.end method
