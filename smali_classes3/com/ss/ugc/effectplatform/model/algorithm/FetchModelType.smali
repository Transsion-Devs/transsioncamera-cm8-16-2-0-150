.class public final enum Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

.field public static final enum ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

.field public static final enum ZIP:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    const-string v1, "ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    new-instance v1, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    const-string v2, "ZIP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ZIP:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    filled-new-array {v0, v1}, [Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->$VALUES:[Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 2

    const-class v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-object p0
.end method

.method public static values()[Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 1

    sget-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->$VALUES:[Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    invoke-virtual {v0}, [Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-object v0
.end method
