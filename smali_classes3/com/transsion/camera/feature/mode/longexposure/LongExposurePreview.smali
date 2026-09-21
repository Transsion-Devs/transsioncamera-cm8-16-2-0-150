.class public Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBufferReady:Z

.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDataFormat:I

.field private mDataHeight:I

.field private mDataWidth:I

.field private mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

.field private final mLock:Ljava/lang/Object;

.field private final mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

.field private final mTransformMatrix:[F

.field private mUBuffer:Ljava/nio/ByteBuffer;

.field private mVBuffer:Ljava/nio/ByteBuffer;

.field private mVUBuffer:Ljava/nio/ByteBuffer;

.field private mYBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 37
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mTransformMatrix:[F

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    return-void
.end method

.method private allocateBuffersLocked(I)V
    .registers 5

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allocateBuffersLocked mDataWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 243
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 245
    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_6e

    const v2, 0x32315659

    if-eq v1, v2, :cond_51

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid format: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_51
    div-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    .line 253
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 255
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    .line 256
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void

    .line 247
    :cond_6e
    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    .line 248
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private destroyGLProgram()V
    .registers 3

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroyGLProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    if-eqz v0, :cond_11

    .line 106
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->release()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    .line 109
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->releaseBuffers()V

    return-void
.end method

.method private drawNV21(II[F)Z
    .registers 13

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    if-nez v0, :cond_12

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "drawNV21 create mGLProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/preview/NV21Program;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/preview/NV21Program;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    .line 170
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_15
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_70

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_70

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_23

    goto :goto_70

    .line 175
    :cond_23
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    if-ne p1, v0, :cond_2b

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    if-eq p2, v0, :cond_2e

    :cond_2b
    move v6, p1

    move v7, p2

    goto :goto_3c

    .line 180
    :cond_2e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    .line 176
    :goto_3c
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid data width: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDataWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDataHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    monitor-exit v1

    return v2

    .line 172
    :cond_70
    :goto_70
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid buffer or buffer not ready, mBufferReady: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    monitor-exit v1

    return v2

    .line 181
    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_15 .. :try_end_8b} :catchall_39

    throw p0
.end method

.method private drawYV12(II[F)Z
    .registers 14

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    if-nez v0, :cond_12

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "drawYV12 create mGLProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/preview/YV12Program;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    .line 189
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_15
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_74

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_74

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_27

    goto :goto_74

    .line 194
    :cond_27
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    if-ne p1, v0, :cond_2f

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    if-eq p2, v0, :cond_32

    :cond_2f
    move v7, p1

    move v8, p2

    goto :goto_40

    .line 199
    :cond_32
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mGLProgram:Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/longexposure/preview/YUVProgram;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[F)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    .line 195
    :goto_40
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid data width: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDataWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDataHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    monitor-exit v1

    return v2

    .line 191
    :cond_74
    :goto_74
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid buffer or buffer not ready, mBufferReady: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    monitor-exit v1

    return v2

    .line 200
    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_15 .. :try_end_8f} :catchall_3d

    throw p0
.end method

.method private fillBuffersLocked([BI)V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4c

    const v1, 0x32315659

    if-eq v0, v1, :cond_34

    .line 282
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    div-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 270
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private releaseBuffers()V
    .registers 4

    .line 113
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseBuffers"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 116
    :try_start_b
    iput v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    .line 117
    iput v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    .line 118
    iput v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 123
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_3d

    .line 125
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_29

    .line 126
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 127
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    .line 129
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_32

    .line 130
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    .line 133
    :cond_32
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3b

    .line 134
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    .line 137
    :cond_3b
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_1e

    throw p0
.end method

.method private requestRender()V
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 234
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->requestRender()V

    :cond_b
    return-void
.end method


# virtual methods
.method public captureEnd()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->releaseBuffers()V

    return-void
.end method

.method public captureStart()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    .line 80
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw p0
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 144
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Current Scene not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 148
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_25

    .line 149
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Not Capturing State"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 153
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mTransformMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 156
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    const/16 v1, 0x11

    if-ne v1, v0, :cond_3c

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mTransformMatrix:[F

    invoke-direct {p0, p3, p4, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->drawNV21(II[F)Z

    move-result p0

    return p0

    :cond_3c
    const v1, 0x32315659

    if-ne v1, v0, :cond_48

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mTransformMatrix:[F

    invoke-direct {p0, p3, p4, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->drawYV12(II[F)Z

    move-result p0

    return p0

    .line 162
    :cond_48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public final modeInit()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_10

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_10
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public final modeUnInit()V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-nez p0, :cond_10

    .line 69
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUnInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_10
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->destroyGLProgram()V

    return-void
.end method

.method public onPreviewData([BIII)V
    .registers 8

    .line 205
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewData width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataWidth, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    mul-int v1, p2, p3

    .line 211
    :try_start_49
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    if-ne p2, v2, :cond_5c

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    if-ne p3, v2, :cond_5c

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    if-ne p4, v2, :cond_5c

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_68

    goto :goto_5c

    :catchall_5a
    move-exception p0

    goto :goto_8e

    .line 212
    :cond_5c
    :goto_5c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->releaseBuffers()V

    .line 214
    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataWidth:I

    .line 215
    iput p3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataHeight:I

    .line 216
    iput p4, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    .line 217
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->allocateBuffersLocked(I)V

    .line 219
    :cond_68
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->fillBuffersLocked([BI)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_89

    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mDataFormat:I

    const/16 p2, 0x11

    if-ne p1, p2, :cond_79

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_86

    :cond_79
    const p2, 0x32315659

    if-ne p1, p2, :cond_89

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mUBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mVBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_89

    :cond_86
    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->mBufferReady:Z

    .line 226
    :cond_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_49 .. :try_end_8a} :catchall_5a

    .line 228
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->requestRender()V

    return-void

    .line 226
    :goto_8e
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_5a

    throw p0
.end method

.method public onRecording(I[F)V
    .registers 3

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->destroyGLProgram()V

    return-void
.end method
