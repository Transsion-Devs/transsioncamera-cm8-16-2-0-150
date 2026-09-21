.class public final Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# instance fields
.field private final cls:Lkotlin/reflect/KClass;

.field private final iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;Lkotlin/reflect/KClass;)V
    .registers 4

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;->iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;->cls:Lkotlin/reflect/KClass;

    return-void
.end method


# virtual methods
.method public bridge synthetic doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;->doJob(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public doJob(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;->iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    if-eqz v0, :cond_10

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;->cls:Lkotlin/reflect/KClass;

    invoke-virtual {v0, p1, p0}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->convertJsonToObject(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_10
    new-instance p0, Lcom/ss/ugc/effectplatform/exception/JsonException;

    const-string p1, "json converter is null!"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/exception/JsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
