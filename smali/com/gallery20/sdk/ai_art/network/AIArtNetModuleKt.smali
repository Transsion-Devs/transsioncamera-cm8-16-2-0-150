.class public final Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OKHTTP_READ_WRITE_TIMEOUT_SECONDS:J = 0xfL

.field private static final SERVER_URL:Ljava/lang/String; = "https://api1.smartartlab.com/api/v1/art-museum/"

.field private static final TAG:Ljava/lang/String; = "AIArtNetModule"

.field private static final aiArtModule:Lorg/koin/core/module/Module;

.field private static final baseUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9_MVIHOtzpzX9niWP8ogU5iY6yw(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule$lambda$3$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JU2_jkORWGxeU7zEP-6rgS8zhms(Landroid/content/Context;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->initKoinWithAIArtModule$lambda$4(Landroid/content/Context;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dzjcx8qP5Q42rV9UcFyvhMsZHRg(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lokhttp3/OkHttpClient;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule$lambda$3$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pvu794ZT1_0toaowrMWRJxEx4IA(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule$lambda$3(Lorg/koin/core/module/Module;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uaIKg-0AbJBsdeJEBlZIbMhITB0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/gallery20/sdk/ai_art/network/AIArtApiService;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule$lambda$3$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 28
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule:Lorg/koin/core/module/Module;

    .line 48
    const-string v0, "persist.gallery.debug_ai_art_base_url"

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v3, v0

    :cond_1d
    if-nez v3, :cond_21

    :cond_1f
    const-string v3, "https://api1.smartartlab.com/api/v1/art-museum/"

    :cond_21
    sput-object v3, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBaseUrl$p()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static final aiArtModule$lambda$3(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .registers 14

    const-string v0, "$this$module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->OkHttpClient:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/Enum;)Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    new-instance v5, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda2;-><init>()V

    .line 203
    sget-object v0, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 205
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 112
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v3, Lokhttp3/OkHttpClient;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v6, v11

    .line 112
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 206
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {p0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 111
    invoke-virtual {p0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_39
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, p0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 30
    sget-object v1, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->Retrofit:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v1}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/Enum;)Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    new-instance v10, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda3;-><init>()V

    .line 203
    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v7

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 112
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v1, Lretrofit2/Retrofit;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 112
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 206
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v1, v6}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {p0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 111
    invoke-virtual {p0, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_6d
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v2, p0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    new-instance v10, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda4;-><init>()V

    .line 203
    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v7

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 112
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 113
    const-class v0, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    .line 112
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 206
    new-instance v0, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v0, v6}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    invoke-virtual {p0, v0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 110
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 111
    invoke-virtual {p0, v0}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 113
    :cond_9c
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {v1, p0, v0}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final aiArtModule$lambda$3$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lokhttp3/OkHttpClient;
    .registers 3

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->provideOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final aiArtModule$lambda$3$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;
    .registers 5

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;

    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->OkHttpClient:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/Enum;)Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    .line 136
    const-class v1, Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    .line 30
    invoke-virtual {p1, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->provideRetrofit(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method private static final aiArtModule$lambda$3$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/gallery20/sdk/ai_art/network/AIArtApiService;
    .registers 5

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;

    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->Retrofit:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/Enum;)Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    .line 136
    const-class v1, Lretrofit2/Retrofit;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    .line 31
    invoke-virtual {p1, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->providerApiService(Lretrofit2/Retrofit;)Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    move-result-object p0

    return-object p0
.end method

.method public static final getAiArtModule()Lorg/koin/core/module/Module;
    .registers 1

    .line 28
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final initKoinWithAIArtModule(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/koin/core/context/DefaultContextExtKt;->startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    return-void
.end method

.method private static final initKoinWithAIArtModule$lambda$4(Landroid/content/Context;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$startKoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {p1, v0, v1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidLogger$default(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;

    .line 41
    invoke-static {p1, p0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;

    .line 42
    sget-object p0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->aiArtModule:Lorg/koin/core/module/Module;

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
