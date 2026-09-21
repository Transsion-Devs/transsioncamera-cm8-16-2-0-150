.class public final Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;)V
    .registers 3

    const-string v0, "iJsonConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    return-void
.end method


# virtual methods
.method public final convertJsonToObject(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .registers 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;->convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getIJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->iJsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    return-object p0
.end method
