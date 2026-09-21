.class public final Lcom/transsion/aicore/nexusflow/FlowConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOW_BUS_TYPES:Ljava/util/List;

.field private static final FLOW_COMPONENTS:Ljava/util/List;

.field private static final FLOW_TYPES:Ljava/util/Map;

.field public static final INSTANCE:Lcom/transsion/aicore/nexusflow/FlowConstant;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowConstant;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/FlowConstant;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowConstant;->INSTANCE:Lcom/transsion/aicore/nexusflow/FlowConstant;

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowConstant;->FLOW_COMPONENTS:Ljava/util/List;

    .line 2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowConstant;->FLOW_TYPES:Ljava/util/Map;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowConstant;->FLOW_BUS_TYPES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getServerClz()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "com.transsion.aicore.nexusflow.FlowDispatcherService"

    return-object p0
.end method

.method public final getServerPkg()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "com.transsion.aicore.nexusflow"

    return-object p0
.end method
