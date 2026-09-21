.class public final Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;-><init>()V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/AIArtNetModule;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 5

    .line 52
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 56
    new-instance v1, Lcom/gallery20/sdk/ai_art/network/TimestampInterceptor;

    invoke-direct {v1}, Lcom/gallery20/sdk/ai_art/network/TimestampInterceptor;-><init>()V

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 57
    new-instance v1, Lcom/gallery20/sdk/ai_art/network/CommonHeaderInterceptor;

    invoke-direct {v1}, Lcom/gallery20/sdk/ai_art/network/CommonHeaderInterceptor;-><init>()V

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 58
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    const-string v0, "persist.gallery.debug_ai_art_okhttp"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_3c

    :cond_3a
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_3c
    invoke-virtual {v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 58
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 61
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/ErrorCodeInterceptor;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/ErrorCodeInterceptor;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public final provideRetrofit(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;
    .registers 3

    const-string p0, "client"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    # getter for: Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->baseUrl:Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/AIArtNetModuleKt;->access$getBaseUrl$p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 66
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final providerApiService(Lretrofit2/Retrofit;)Lcom/gallery20/sdk/ai_art/network/AIArtApiService;
    .registers 2

    const-string p0, "retrofit"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-class p0, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    invoke-virtual {p1, p0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    return-object p0
.end method
