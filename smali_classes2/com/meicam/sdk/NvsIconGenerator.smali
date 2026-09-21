.class public Lcom/meicam/sdk/NvsIconGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsIconGenerator$IconCallback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_iconCallback:Lcom/meicam/sdk/NvsIconGenerator$IconCallback;

.field private m_iconGenerator:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "Meicam"

    iput-object v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    invoke-direct {p0}, Lcom/meicam/sdk/NvsIconGenerator;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    return-void
.end method

.method private native nativeCancelTask(JJ)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetIcon(JLjava/lang/String;JI)J
.end method

.method private native nativeGetIconFromCache(JLjava/lang/String;JI)Landroid/graphics/Bitmap;
.end method

.method private native nativeInit()J
.end method


# virtual methods
.method public cancelTask(J)V
    .registers 5

    .line 140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 141
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsIconGenerator;->isReleased()Z

    move-result v0

    if-nez v0, :cond_e

    .line 142
    iget-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsIconGenerator;->nativeCancelTask(JJ)V

    :cond_e
    return-void
.end method

.method public getIcon(Ljava/lang/String;JI)J
    .registers 12

    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsIconGenerator;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 p0, 0x0

    return-wide p0

    .line 127
    :cond_c
    iget-wide v1, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsIconGenerator;->nativeGetIcon(JLjava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getIconFromCache(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .registers 12

    .line 103
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 104
    iget-wide v1, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsIconGenerator;->nativeGetIconFromCache(JLjava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isReleased()Z
    .registers 5

    .line 77
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 78
    iget-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected notifyIconReady(Landroid/graphics/Bitmap;JJ)V
    .registers 6

    .line 147
    iget-object p0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconCallback:Lcom/meicam/sdk/NvsIconGenerator$IconCallback;

    if-eqz p0, :cond_7

    .line 148
    invoke-interface/range {p0 .. p5}, Lcom/meicam/sdk/NvsIconGenerator$IconCallback;->onIconReady(Landroid/graphics/Bitmap;JJ)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 66
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsIconGenerator;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconCallback:Lcom/meicam/sdk/NvsIconGenerator$IconCallback;

    .line 71
    iget-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsIconGenerator;->nativeClose(J)V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconGenerator:J

    return-void
.end method

.method public setIconCallback(Lcom/meicam/sdk/NvsIconGenerator$IconCallback;)V
    .registers 2

    .line 83
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 84
    iput-object p1, p0, Lcom/meicam/sdk/NvsIconGenerator;->m_iconCallback:Lcom/meicam/sdk/NvsIconGenerator$IconCallback;

    return-void
.end method
