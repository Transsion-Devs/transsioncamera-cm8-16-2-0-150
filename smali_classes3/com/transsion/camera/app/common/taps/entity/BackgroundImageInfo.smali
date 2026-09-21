.class public Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;
.super Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.source "SourceFile"


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 5

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;-><init>(J)V

    .line 16
    iput-object p3, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    .line 17
    iput-object p4, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

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
    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    .line 48
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 53
    invoke-super {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSameUri(Landroid/net/Uri;)Z
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_9

    .line 30
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundImageInfo{ mTimestampKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
