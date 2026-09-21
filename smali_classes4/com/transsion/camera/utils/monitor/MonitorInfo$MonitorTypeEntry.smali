.class public Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/MonitorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorTypeEntry"
.end annotation


# instance fields
.field private mSceneId:Ljava/lang/String;

.field private mSceneTag:Ljava/lang/String;

.field private mSceneThreshold:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneTag:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneThreshold:I

    return-void
.end method


# virtual methods
.method public getSceneId()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneTag()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneThreshold()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneThreshold:I

    return p0
.end method

.method public setSceneThreshold(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneThreshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonitorTypeEntry{mSceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSceneTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->mSceneThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
