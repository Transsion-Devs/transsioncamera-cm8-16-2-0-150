.class public Lcom/ss/android/medialib/model/TimeSpeedModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field duration:J

.field speed:D


# direct methods
.method public constructor <init>(JD)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->duration:J

    .line 14
    iput-wide p3, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->speed:D

    return-void
.end method

.method public static calculateRealTime(ID)I
    .registers 7

    .line 0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p0

    mul-double/2addr v2, v0

    div-double/2addr v2, p1

    double-to-int p0, v2

    return p0
.end method

.method public static calculateRealTime(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/android/medialib/model/TimeSpeedModel;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_26

    .line 36
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/medialib/model/TimeSpeedModel;

    int-to-long v2, v0

    .line 37
    iget-wide v4, v1, Lcom/ss/android/medialib/model/TimeSpeedModel;->duration:J

    iget-wide v0, v1, Lcom/ss/android/medialib/model/TimeSpeedModel;->speed:D

    invoke-static {v4, v5, v0, v1}, Lcom/ss/android/medialib/model/TimeSpeedModel;->calculateRealTime(JD)J

    move-result-wide v0

    add-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_e

    :cond_26
    :goto_26
    return v0
.end method

.method public static calculateRealTime(JD)J
    .registers 6

    .line 0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    long-to-double p0, p0

    mul-double/2addr p0, v0

    div-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->duration:J

    return-wide v0
.end method

.method public getSpeed()D
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->speed:D

    return-wide v0
.end method

.method public setDuration(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->duration:J

    return-void
.end method

.method public setSpeed(F)V
    .registers 4

    float-to-double v0, p1

    .line 30
    iput-wide v0, p0, Lcom/ss/android/medialib/model/TimeSpeedModel;->speed:D

    return-void
.end method
