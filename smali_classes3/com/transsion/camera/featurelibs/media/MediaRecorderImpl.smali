.class Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;
.super Lcom/transsion/camera/featurelibs/media/BaseRecorder;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private mConfigurator:Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

.field private final mDefaultConfigurator:Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

.field private final mMediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;-><init>()V

    .line 34
    new-instance v0, Lcom/transsion/camera/featurelibs/media/media/DefaultMediaConfigurator;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/media/DefaultMediaConfigurator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mDefaultConfigurator:Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

    .line 37
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0, p1}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->config(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mConfigurator:Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mDefaultConfigurator:Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 56
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;->configure(Landroid/media/MediaRecorder;Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V

    return-void
.end method

.method public bridge synthetic config(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->config(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 4

    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->notifyError(II)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 4

    .line 119
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->notifyInfo(II)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->pause()V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 61
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->release()V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->reset()V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->reset()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 95
    :try_start_e
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->resume()V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->start()V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->stop()V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/MediaRecorderImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    return-void
.end method
