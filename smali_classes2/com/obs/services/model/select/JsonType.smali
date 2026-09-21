.class public final enum Lcom/obs/services/model/select/JsonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/select/JsonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/select/JsonType;

.field public static final enum DOCUMENT:Lcom/obs/services/model/select/JsonType;

.field public static final enum LINES:Lcom/obs/services/model/select/JsonType;


# instance fields
.field private final jsonType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lcom/obs/services/model/select/JsonType;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/obs/services/model/select/JsonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/select/JsonType;->DOCUMENT:Lcom/obs/services/model/select/JsonType;

    .line 22
    new-instance v1, Lcom/obs/services/model/select/JsonType;

    const-string v2, "LINES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/obs/services/model/select/JsonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/select/JsonType;->LINES:Lcom/obs/services/model/select/JsonType;

    .line 20
    filled-new-array {v0, v1}, [Lcom/obs/services/model/select/JsonType;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/select/JsonType;->$VALUES:[Lcom/obs/services/model/select/JsonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/obs/services/model/select/JsonType;->jsonType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/select/JsonType;
    .registers 2

    .line 20
    const-class v0, Lcom/obs/services/model/select/JsonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/select/JsonType;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/select/JsonType;
    .registers 1

    .line 20
    sget-object v0, Lcom/obs/services/model/select/JsonType;->$VALUES:[Lcom/obs/services/model/select/JsonType;

    invoke-virtual {v0}, [Lcom/obs/services/model/select/JsonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/select/JsonType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/obs/services/model/select/JsonType;->jsonType:Ljava/lang/String;

    return-object p0
.end method
