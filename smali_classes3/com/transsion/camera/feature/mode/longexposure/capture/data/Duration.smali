.class public Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDuration:J

.field private final mTimerStyle:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;


# direct methods
.method public constructor <init>(JLcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mDuration:J

    .line 23
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mTimerStyle:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mDuration:J

    return-wide v0
.end method

.method public getTimerStyle()Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mTimerStyle:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration{mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTimerStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->mTimerStyle:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
