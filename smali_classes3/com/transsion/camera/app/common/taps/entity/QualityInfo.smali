.class public Lcom/transsion/camera/app/common/taps/entity/QualityInfo;
.super Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.source "SourceFile"


# instance fields
.field private final mQuality:I

.field private final mShowTimestamp:J

.field private final mUserID:I


# direct methods
.method public constructor <init>(JJII)V
    .registers 7

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;-><init>(J)V

    .line 14
    iput-wide p3, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    .line 15
    iput p5, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    .line 16
    iput p6, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    return-void
.end method

.method public static getShowTimestamp(Lcom/transsion/camera/app/common/taps/entity/QualityInfo;J)J
    .registers 3

    if-eqz p0, :cond_7

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getShowTimestamp(J)J

    move-result-wide p0

    return-wide p0

    :cond_7
    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 43
    :cond_a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 46
    :cond_11
    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    .line 47
    iget-wide v3, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    iget-wide v5, p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_28

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    iget v3, p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    if-ne v1, v3, :cond_28

    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    iget p1, p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    if-ne p0, p1, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public getQuality()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    return p0
.end method

.method public getShowTimestamp(J)J
    .registers 7

    .line 20
    iget-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_9

    return-wide v0

    :cond_9
    return-wide p1
.end method

.method public getUserID()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isLowQuality()Z
    .registers 1

    .line 32
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mTimestampKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mShowTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mShowTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUserID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->mQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
