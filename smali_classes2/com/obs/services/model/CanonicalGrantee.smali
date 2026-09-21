.class public Lcom/obs/services/model/CanonicalGrantee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/GranteeInterface;


# instance fields
.field private displayName:Ljava/lang/String;

.field private grantId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

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

    .line 94
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 97
    :cond_13
    check-cast p1, Lcom/obs/services/model/CanonicalGrantee;

    .line 98
    iget-object p0, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    if-nez p0, :cond_1f

    .line 99
    iget-object p0, p1, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    return v1

    .line 101
    :cond_1f
    iget-object p1, p1, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_a
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/obs/services/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CanonicalGrantee [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CanonicalGrantee;->grantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_27
    const-string p0, ""

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
