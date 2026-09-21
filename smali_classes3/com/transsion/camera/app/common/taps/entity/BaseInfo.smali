.class public abstract Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTimestampKey:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->mTimestampKey:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 21
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 24
    :cond_a
    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;

    .line 25
    iget-wide v3, p0, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->mTimestampKey:J

    iget-wide p0, p1, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->mTimestampKey:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    return v2
.end method

.method public getTimestampKey()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->mTimestampKey:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->mTimestampKey:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
