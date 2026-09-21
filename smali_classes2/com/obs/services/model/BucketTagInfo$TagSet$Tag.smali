.class public Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/BucketTagInfo$TagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 129
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 132
    :cond_13
    check-cast p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    .line 133
    iget-object v2, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 134
    iget-object v2, p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 137
    :cond_1e
    iget-object v3, p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 140
    :cond_27
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    if-nez p0, :cond_30

    .line 141
    iget-object p0, p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    if-eqz p0, :cond_39

    return v1

    .line 144
    :cond_30
    iget-object p1, p1, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    return v1

    :cond_39
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 117
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag [key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
