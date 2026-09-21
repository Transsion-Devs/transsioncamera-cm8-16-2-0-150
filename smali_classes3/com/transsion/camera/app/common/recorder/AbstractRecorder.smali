.class public abstract Lcom/transsion/camera/app/common/recorder/AbstractRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V
    .registers 2

    .line 23
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configRecorder"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public leave(ZZZ)Z
    .registers 6

    .line 43
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leave needResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " needStartPreview: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " sync: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public operationPrepared()V
    .registers 2

    .line 28
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "operationPrepared"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pauseResume()V
    .registers 2

    .line 38
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pauseResume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startStop()V
    .registers 2

    .line 33
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startStop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public storageUnMount()V
    .registers 2

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storageUnMount"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z
    .registers 2

    .line 55
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "videoSnapShot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
