.class public final enum Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

.field public static final enum GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

.field public static final enum POST:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    new-instance v1, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->POST:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    filled-new-array {v0, v1}, [Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->$VALUES:[Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;
    .registers 2

    const-class v0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    return-object p0
.end method

.method public static values()[Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;
    .registers 1

    sget-object v0, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->$VALUES:[Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    invoke-virtual {v0}, [Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    return-object v0
.end method
