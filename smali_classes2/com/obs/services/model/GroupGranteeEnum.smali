.class public final enum Lcom/obs/services/model/GroupGranteeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/GroupGranteeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/GroupGranteeEnum;

.field public static final enum ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

.field public static final enum AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGranteeEnum;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LOG_DELIVERY:Lcom/obs/services/model/GroupGranteeEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Lcom/obs/services/model/GroupGranteeEnum;

    const-string v1, "ALL_USERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/GroupGranteeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    .line 32
    new-instance v1, Lcom/obs/services/model/GroupGranteeEnum;

    const-string v2, "AUTHENTICATED_USERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/obs/services/model/GroupGranteeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/obs/services/model/GroupGranteeEnum;->AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    .line 37
    new-instance v2, Lcom/obs/services/model/GroupGranteeEnum;

    const-string v3, "LOG_DELIVERY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/obs/services/model/GroupGranteeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/obs/services/model/GroupGranteeEnum;->LOG_DELIVERY:Lcom/obs/services/model/GroupGranteeEnum;

    .line 23
    filled-new-array {v0, v1, v2}, [Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/GroupGranteeEnum;->$VALUES:[Lcom/obs/services/model/GroupGranteeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/GroupGranteeEnum;
    .registers 2

    .line 44
    const-string v0, "Everyone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "http://acs.amazonaws.com/groups/global/AllUsers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 46
    :cond_11
    const-string v0, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 47
    sget-object p0, Lcom/obs/services/model/GroupGranteeEnum;->AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    return-object p0

    .line 48
    :cond_1c
    const-string v0, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 49
    sget-object p0, Lcom/obs/services/model/GroupGranteeEnum;->LOG_DELIVERY:Lcom/obs/services/model/GroupGranteeEnum;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_29
    :goto_29
    sget-object p0, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/GroupGranteeEnum;
    .registers 2

    .line 23
    const-class v0, Lcom/obs/services/model/GroupGranteeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/GroupGranteeEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/GroupGranteeEnum;
    .registers 1

    .line 23
    sget-object v0, Lcom/obs/services/model/GroupGranteeEnum;->$VALUES:[Lcom/obs/services/model/GroupGranteeEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/GroupGranteeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/GroupGranteeEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
