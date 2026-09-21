.class public Lcom/ss/android/vesdk/TEMemMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ss/android/vesdk/TEMemMonitor;->mContext:Landroid/content/Context;

    .line 16
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/ss/android/vesdk/TEMemMonitor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private getAvailMemorybyService()D
    .registers 3

    .line 30
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 31
    iget-object p0, p0, Lcom/ss/android/vesdk/TEMemMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 33
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v0, v0

    return-wide v0
.end method

.method private getTotalMemorybyService()D
    .registers 3

    .line 37
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 38
    iget-object p0, p0, Lcom/ss/android/vesdk/TEMemMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 40
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v0, v0

    return-wide v0
.end method

.method private with2PointDouble(D)D
    .registers 5

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public sample()D
    .registers 8

    .line 20
    invoke-direct {p0}, Lcom/ss/android/vesdk/TEMemMonitor;->getAvailMemorybyService()D

    move-result-wide v0

    .line 21
    invoke-direct {p0}, Lcom/ss/android/vesdk/TEMemMonitor;->getTotalMemorybyService()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_f

    return-wide v4

    :cond_f
    sub-double v0, v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/TEMemMonitor;->with2PointDouble(D)D

    move-result-wide v0

    return-wide v0
.end method
