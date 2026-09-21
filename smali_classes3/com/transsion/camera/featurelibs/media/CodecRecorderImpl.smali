.class public Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;
.super Lcom/transsion/camera/featurelibs/media/BaseRecorder;
.source "SourceFile"


# instance fields
.field private final mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;-><init>()V

    .line 31
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->config(Ljava/lang/Object;)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->config(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic config(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->pause()V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->pause()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    return-void
.end method

.method public prepare(Landroid/opengl/EGLContext;)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    instance-of v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;

    if-eqz v0, :cond_c

    .line 65
    check-cast p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->prepare(Landroid/opengl/EGLContext;)V

    return-void

    .line 67
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only texture input can call this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->release()V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->release()V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->reset()V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->reset()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->resume()V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->resume()V

    return-void
.end method

.method public setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->start()V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->stop()V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/CodecRecorderImpl;->mRecorder:Lcom/transsion/camera/featurelibs/media/BaseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->stop()V

    return-void
.end method
