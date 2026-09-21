.class public final enum Lcom/example/dispatcher_client/FlowType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/example/dispatcher_client/FlowType;

.field public static final enum LLM_ONLY:Lcom/example/dispatcher_client/FlowType;

.field public static final enum MODEL_LANGUAGE_FETCHER:Lcom/example/dispatcher_client/FlowType;


# direct methods
.method private static final synthetic $values()[Lcom/example/dispatcher_client/FlowType;
    .registers 2

    sget-object v0, Lcom/example/dispatcher_client/FlowType;->LLM_ONLY:Lcom/example/dispatcher_client/FlowType;

    sget-object v1, Lcom/example/dispatcher_client/FlowType;->MODEL_LANGUAGE_FETCHER:Lcom/example/dispatcher_client/FlowType;

    filled-new-array {v0, v1}, [Lcom/example/dispatcher_client/FlowType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/example/dispatcher_client/FlowType;

    const-string v1, "LLM_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowType;->LLM_ONLY:Lcom/example/dispatcher_client/FlowType;

    .line 18
    new-instance v0, Lcom/example/dispatcher_client/FlowType;

    const-string v1, "MODEL_LANGUAGE_FETCHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowType;->MODEL_LANGUAGE_FETCHER:Lcom/example/dispatcher_client/FlowType;

    invoke-static {}, Lcom/example/dispatcher_client/FlowType;->$values()[Lcom/example/dispatcher_client/FlowType;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowType;->$VALUES:[Lcom/example/dispatcher_client/FlowType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/dispatcher_client/FlowType;
    .registers 2

    const-class v0, Lcom/example/dispatcher_client/FlowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lcom/example/dispatcher_client/FlowType;

    return-object p0
.end method

.method public static values()[Lcom/example/dispatcher_client/FlowType;
    .registers 1

    sget-object v0, Lcom/example/dispatcher_client/FlowType;->$VALUES:[Lcom/example/dispatcher_client/FlowType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lcom/example/dispatcher_client/FlowType;

    return-object v0
.end method
