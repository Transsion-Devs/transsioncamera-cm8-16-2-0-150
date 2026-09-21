.class public Lcom/obs/services/model/GrantAndPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private delivered:Z

.field private grantee:Lcom/obs/services/model/GranteeInterface;

.field private permission:Lcom/obs/services/model/Permission;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    .line 39
    iput-object p2, p0, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

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

    .line 104
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 107
    :cond_13
    check-cast p1, Lcom/obs/services/model/GrantAndPermission;

    .line 108
    iget-boolean v2, p0, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    iget-boolean v3, p1, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    if-eq v2, v3, :cond_1c

    return v1

    .line 111
    :cond_1c
    iget-object v2, p0, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    if-nez v2, :cond_25

    .line 112
    iget-object v2, p1, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    if-eqz v2, :cond_2e

    return v1

    .line 115
    :cond_25
    iget-object v3, p1, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 118
    :cond_2e
    iget-object p0, p0, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    if-nez p0, :cond_37

    .line 119
    iget-object p0, p1, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    if-eqz p0, :cond_40

    return v1

    .line 122
    :cond_37
    iget-object p1, p1, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/Permission;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    return v1

    :cond_40
    return v0
.end method

.method public getGrantee()Lcom/obs/services/model/GranteeInterface;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    return-object p0
.end method

.method public getPermission()Lcom/obs/services/model/Permission;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 90
    iget-boolean v0, p0, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x4cf

    goto :goto_9

    :cond_7
    const/16 v0, 0x4d5

    :goto_9
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 91
    iget-object v2, p0, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_14

    move v2, v3

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 92
    iget-object p0, p0, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    if-nez p0, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lcom/obs/services/model/Permission;->hashCode()I

    move-result v3

    :goto_23
    add-int/2addr v0, v3

    return v0
.end method

.method public isDelivered()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    return p0
.end method

.method public setDelivered(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrantAndPermission [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GrantAndPermission;->grantee:Lcom/obs/services/model/GranteeInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GrantAndPermission;->permission:Lcom/obs/services/model/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delivered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/GrantAndPermission;->delivered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
