.class public Lcom/ss/android/vesdk/model/VEPrePlayStopParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;
    }
.end annotation


# instance fields
.field private rebuildTimeline:Z

.field private sync:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->sync:Z

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->rebuildTimeline:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/model/VEPrePlayStopParams$1;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;Z)Z
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->sync:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;Z)Z
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->rebuildTimeline:Z

    return p1
.end method


# virtual methods
.method public getRebuildTimeline()Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->rebuildTimeline:Z

    return p0
.end method

.method public getSync()Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->sync:Z

    return p0
.end method
