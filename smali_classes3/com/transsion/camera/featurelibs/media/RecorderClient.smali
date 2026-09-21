.class public Lcom/transsion/camera/featurelibs/media/RecorderClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;-><init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V
    .registers 3

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    instance-of v0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;

    if-eqz v0, :cond_c

    .line 74
    check-cast p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V

    return-void

    .line 76
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public config(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V
    .registers 3

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    instance-of v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;

    if-eqz v0, :cond_c

    .line 50
    check-cast p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->config(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V

    return-void

    .line 52
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pause()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->pause()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    return-void
.end method

.method public prepare(Landroid/opengl/EGLContext;)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    instance-of v0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;

    if-eqz v0, :cond_c

    .line 93
    check-cast p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->prepare(Landroid/opengl/EGLContext;)V

    return-void

    .line 95
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only texture input can call this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->release()V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->reset()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->resume()V

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    instance-of v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;

    if-eqz v0, :cond_c

    .line 58
    check-cast p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->setInputSurface(Landroid/view/Surface;)V

    return-void

    .line 60
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/RecorderClient;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->stop()V

    return-void
.end method
