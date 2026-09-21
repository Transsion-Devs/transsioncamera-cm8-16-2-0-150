.class public abstract Lcom/transsion/camera/utils/manager/GlobalClickManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/Object;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static currentKey:Ljava/lang/Object;

.field private static sClickTime:J

.field private static sIsModeReseting:Z

.field private static sModeResetTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GlobalClickManage"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 11
    const-string v0, "default"

    sput-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->DEFAULT_KEY:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 13
    sput-wide v1, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sClickTime:J

    .line 14
    sput-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->currentKey:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sIsModeReseting:Z

    .line 16
    sput-wide v1, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sModeResetTime:J

    return-void
.end method

.method public static checkCanClick()Z
    .registers 2

    .line 35
    sget-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->DEFAULT_KEY:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static checkCanClick(Ljava/lang/Object;Z)Z
    .registers 6

    .line 19
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClickInner(Ljava/lang/Object;Z)Z

    move-result v0

    .line 20
    sget-object v1, Lcom/transsion/camera/utils/manager/GlobalClickManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCanClick() called with: selfKey = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], selfClickAllow = ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "], canClick = ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static checkCanClickInner(Ljava/lang/Object;Z)Z
    .registers 6

    if-eqz p1, :cond_7

    .line 25
    sget-object p1, Lcom/transsion/camera/utils/manager/GlobalClickManager;->currentKey:Ljava/lang/Object;

    if-ne p0, p1, :cond_7

    goto :goto_18

    .line 26
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-lez p1, :cond_22

    .line 27
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sClickTime:J

    .line 28
    sput-object p0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->currentKey:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static isModeReseting()Z
    .registers 4

    .line 45
    sget-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeReseting() called sIsModeReseting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sIsModeReseting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sModeResetTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_2b
    sget-boolean v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sIsModeReseting:Z

    return v0
.end method

.method public static setModeResetStatus(Z)V
    .registers 4

    .line 39
    sget-object v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeResetStatus() called with: reseting = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    sput-boolean p0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sIsModeReseting:Z

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/manager/GlobalClickManager;->sModeResetTime:J

    return-void
.end method
