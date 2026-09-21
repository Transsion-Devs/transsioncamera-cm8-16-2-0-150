.class public abstract synthetic Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->values()[Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ZIP:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
