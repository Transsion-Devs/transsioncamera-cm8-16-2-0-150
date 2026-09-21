.class final Lcom/google/android/datatransport/AutoValue_EventContext;
.super Lcom/google/android/datatransport/EventContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/AutoValue_EventContext$Builder;
    }
.end annotation


# instance fields
.field private final experimentIdsClear:[B

.field private final experimentIdsEncrypted:[B

.field private final pseudonymousId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4

    .line 20
    invoke-direct {p0}, Lcom/google/android/datatransport/EventContext;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->pseudonymousId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    .line 23
    iput-object p3, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[B[BLcom/google/android/datatransport/AutoValue_EventContext$1;)V
    .registers 5

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/AutoValue_EventContext;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/EventContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 61
    check-cast p1, Lcom/google/android/datatransport/EventContext;

    .line 62
    iget-object v1, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->pseudonymousId:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getPseudonymousId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getPseudonymousId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :goto_20
    iget-object v1, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    .line 63
    instance-of v3, p1, Lcom/google/android/datatransport/AutoValue_EventContext;

    if-eqz v3, :cond_2c

    move-object v4, p1

    check-cast v4, Lcom/google/android/datatransport/AutoValue_EventContext;

    iget-object v4, v4, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsClear()[B

    move-result-object v4

    :goto_30
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    if-eqz v3, :cond_3f

    .line 64
    check-cast p1, Lcom/google/android/datatransport/AutoValue_EventContext;

    iget-object p1, p1, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    goto :goto_43

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsEncrypted()[B

    move-result-object p1

    :goto_43
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_4a

    return v0

    :cond_4a
    return v2
.end method

.method public getExperimentIdsClear()[B
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    return-object p0
.end method

.method public getExperimentIdsEncrypted()[B
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    return-object p0
.end method

.method public getPseudonymousId()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->pseudonymousId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->pseudonymousId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 77
    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventContext{pseudonymousId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->pseudonymousId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIdsClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsClear:[B

    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIdsEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/datatransport/AutoValue_EventContext;->experimentIdsEncrypted:[B

    .line 51
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
