.class public abstract Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLoseFocusTimestamp:J

.field private mResumeTimestamp:J

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mWindowFocus:Z

.field private mWindowFocusTimestamp:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocus:Z

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mResumeTimestamp:J

    .line 14
    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocusTimestamp:J

    .line 15
    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mLoseFocusTimestamp:J

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method protected isInvalidBroadcast(Ljava/lang/String;JJ)Z
    .registers 6

    .line 42
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->isInvalidKeyEvent(Ljava/lang/String;JJ)Z

    move-result p1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isInvalidBroadcast: isInvalid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method protected isInvalidKeyEvent(Ljava/lang/String;JJ)Z
    .registers 12

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isInvalidKeyEvent: send timestamp is invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 57
    :cond_f
    iget-wide v2, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mResumeTimestamp:J

    iget-wide v4, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mLoseFocusTimestamp:J

    cmp-long v0, v2, v4

    const/4 v4, 0x1

    const-string v5, ", cost: "

    if-lez v0, :cond_3c

    cmp-long v0, p2, v2

    if-gez v0, :cond_64

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInvalidKeyEvent: invalid broadcast, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    .line 63
    :cond_3c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocus:Z

    if-eqz v0, :cond_64

    iget-wide v2, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocusTimestamp:J

    cmp-long v0, p2, v2

    if-gez v0, :cond_64

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInvalidKeyEvent: invalid broadcast, window focus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    :cond_64
    return v1
.end method

.method public isInvalidKeyEventFromSetting()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResume(J)V
    .registers 5

    .line 28
    iput-wide p1, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mResumeTimestamp:J

    .line 29
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResume: mResumeTimestamp = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mResumeTimestamp:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    if-nez p1, :cond_8

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mLoseFocusTimestamp:J

    .line 36
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocusTimestamp:J

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocus:Z

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: mWindowFocusTimestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mWindowFocusTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", hasFocus:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public abstract setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
