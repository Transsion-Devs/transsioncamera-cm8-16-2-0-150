.class public Lcom/obs/services/model/AccessControlList;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# static fields
.field public static final REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;


# instance fields
.field private delivered:Z

.field private grants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/obs/services/model/GrantAndPermission;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/obs/services/model/Owner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    .line 36
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    .line 41
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    .line 46
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

    .line 51
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;

    .line 56
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lcom/obs/services/model/AccessControlList;

    .line 61
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lcom/obs/services/model/AccessControlList;

    .line 66
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lcom/obs/services/model/AccessControlList;

    .line 71
    new-instance v0, Lcom/obs/services/model/AccessControlList;

    invoke-direct {v0}, Lcom/obs/services/model/AccessControlList;-><init>()V

    sput-object v0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_LOG_DELIVERY_WRITE:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getGrantAndPermissions()[Lcom/obs/services/model/GrantAndPermission;
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/obs/services/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Lcom/obs/services/model/GrantAndPermission;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/obs/services/model/GrantAndPermission;

    return-object p0
.end method

.method public getGrants()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/GrantAndPermission;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/obs/services/model/AccessControlList;->grants:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/AccessControlList;->grants:Ljava/util/Set;

    .line 127
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/AccessControlList;->grants:Ljava/util/Set;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/obs/services/model/AccessControlList;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getPermissionsForGrantee(Lcom/obs/services/model/GranteeInterface;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/GranteeInterface;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/Permission;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/obs/services/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/GrantAndPermission;

    .line 142
    invoke-virtual {v1}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 143
    invoke-virtual {v1}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method public grantAllPermissions([Lcom/obs/services/model/GrantAndPermission;)V
    .registers 6

    const/4 v0, 0x0

    .line 178
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 179
    aget-object v1, p1, v0

    .line 180
    invoke-virtual {v1}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v3

    invoke-virtual {v1}, Lcom/obs/services/model/GrantAndPermission;->isDelivered()Z

    move-result v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/obs/services/model/AccessControlList;->grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;Z)Lcom/obs/services/model/GrantAndPermission;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)Lcom/obs/services/model/GrantAndPermission;
    .registers 4

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/model/AccessControlList;->grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;Z)Lcom/obs/services/model/GrantAndPermission;

    move-result-object p0

    return-object p0
.end method

.method public grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;Z)Lcom/obs/services/model/GrantAndPermission;
    .registers 5

    .line 165
    new-instance v0, Lcom/obs/services/model/GrantAndPermission;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/GrantAndPermission;-><init>(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)V

    .line 166
    invoke-virtual {v0, p3}, Lcom/obs/services/model/GrantAndPermission;->setDelivered(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/obs/services/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isDelivered()Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Lcom/obs/services/model/AccessControlList;->delivered:Z

    return p0
.end method

.method public setDelivered(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/obs/services/model/AccessControlList;->delivered:Z

    return-void
.end method

.method public setOwner(Lcom/obs/services/model/Owner;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/obs/services/model/AccessControlList;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/obs/services/model/AccessControlList;->getGrantAndPermissions()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 197
    invoke-virtual {v4}, Lcom/obs/services/model/GrantAndPermission;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 199
    :cond_20
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessControlList [owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/AccessControlList;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", grants="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
