.class public Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;,
        Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;,
        Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

.field private mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

.field private mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

.field private mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

.field private mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;


# direct methods
.method static bridge synthetic -$$Nest$mhandlePrepare(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->handlePrepare(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRelease(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->handleRelease()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTextureUpdated(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->handleTextureUpdated(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TextureRender"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;-><init>()V

    return-void
.end method

.method private handlePrepare(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)V
    .registers 5

    .line 138
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->-$$Nest$fgetmSharedEglContext(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)Landroid/opengl/EGLContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    .line 139
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;->-$$Nest$fgetmSurface(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)Landroid/view/Surface;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    return-void
.end method

.method private handleRelease()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->releaseOnGLThread()V

    .line 187
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    if-eqz v0, :cond_13

    .line 190
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->release()V

    .line 191
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    .line 193
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    if-eqz v0, :cond_1c

    .line 194
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->release()V

    .line 195
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    :cond_1c
    return-void
.end method

.method private handleTextureUpdated(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_27

    const/4 v1, 0x3

    if-eq v1, v0, :cond_27

    .line 145
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTextureUpdated invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    if-nez v0, :cond_33

    .line 150
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleTextureUpdated: mWindowSurface is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_33
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->makeCurrent()V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    if-nez v0, :cond_59

    const/4 v0, 0x1

    .line 157
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->-$$Nest$fgetmTextureType(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 158
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    goto :goto_54

    .line 160
    :cond_4b
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    .line 162
    :goto_54
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->createOnGlThread()V

    .line 165
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

    if-eqz v0, :cond_70

    .line 167
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->updatePresentationTime()V

    .line 168
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->getPresentationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6b

    return-void

    .line 172
    :cond_6b
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->setPresentationTime(J)V

    .line 175
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderProgram:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->-$$Nest$fgetmMatrix(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;->-$$Nest$fgetmTextureId(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;->draw([FI)V

    .line 178
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleTextureUpdated draw"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mWindowSurface:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->swapBuffers()Z

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TextureRender-GLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    new-instance v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    .line 71
    new-instance p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;

    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;-><init>(Landroid/view/Surface;Landroid/opengl/EGLContext;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->release()V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    if-nez v0, :cond_f

    .line 85
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release failed, renderHandler is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    return-void
.end method

.method public reset()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->release()V

    return-void
.end method

.method public setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

    return-void
.end method

.method public updateTexture(II[F)V
    .registers 6

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->mRenderHandler:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;

    if-nez p0, :cond_c

    .line 96
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTextureUpdated failed, renderHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_c
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;-><init>(II[FLcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
