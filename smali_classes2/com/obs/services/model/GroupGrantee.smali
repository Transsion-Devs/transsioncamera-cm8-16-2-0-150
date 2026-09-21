.class public Lcom/obs/services/model/GroupGrantee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/GranteeInterface;


# static fields
.field public static final ALL_USERS:Lcom/obs/services/model/GroupGrantee;

.field public static final AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGrantee;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_DELIVERY:Lcom/obs/services/model/GroupGrantee;


# instance fields
.field private groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/obs/services/model/GroupGrantee;

    sget-object v1, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-direct {v0, v1}, Lcom/obs/services/model/GroupGrantee;-><init>(Lcom/obs/services/model/GroupGranteeEnum;)V

    sput-object v0, Lcom/obs/services/model/GroupGrantee;->ALL_USERS:Lcom/obs/services/model/GroupGrantee;

    .line 31
    new-instance v0, Lcom/obs/services/model/GroupGrantee;

    sget-object v1, Lcom/obs/services/model/GroupGranteeEnum;->AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-direct {v0, v1}, Lcom/obs/services/model/GroupGrantee;-><init>(Lcom/obs/services/model/GroupGranteeEnum;)V

    sput-object v0, Lcom/obs/services/model/GroupGrantee;->AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGrantee;

    .line 36
    new-instance v0, Lcom/obs/services/model/GroupGrantee;

    sget-object v1, Lcom/obs/services/model/GroupGranteeEnum;->LOG_DELIVERY:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-direct {v0, v1}, Lcom/obs/services/model/GroupGrantee;-><init>(Lcom/obs/services/model/GroupGranteeEnum;)V

    sput-object v0, Lcom/obs/services/model/GroupGrantee;->LOG_DELIVERY:Lcom/obs/services/model/GroupGrantee;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/GroupGranteeEnum;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/obs/services/model/GroupGranteeEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

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

    .line 103
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 106
    :cond_13
    check-cast p1, Lcom/obs/services/model/GroupGrantee;

    .line 107
    iget-object p0, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    iget-object p1, p1, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    if-ne p0, p1, :cond_1c

    return v0

    :cond_1c
    return v1
.end method

.method public getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/obs/services/model/GroupGranteeEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_a
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-static {p1}, Lcom/obs/services/model/GroupGranteeEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupGrantee ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/GroupGrantee;->groupGranteeType:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
