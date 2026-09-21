.class public abstract Lcom/transsion/camera/featurelibs/media/BaseRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mRecorderListener:Lcom/transsion/camera/featurelibs/media/IRecorderListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)V
    .registers 4

    .line 31
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyError(II)V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/IRecorderListener;

    if-eqz p0, :cond_7

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/IRecorderListener;->onError(II)V

    :cond_7
    return-void
.end method

.method protected notifyInfo(II)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/IRecorderListener;

    if-eqz p0, :cond_7

    .line 79
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/IRecorderListener;->onInfo(II)V

    :cond_7
    return-void
.end method

.method public pause()V
    .registers 2

    .line 56
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .registers 2

    .line 36
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepare"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 66
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 61
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 51
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/IRecorderListener;

    return-void
.end method

.method public start()V
    .registers 2

    .line 41
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 46
    sget-object p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
