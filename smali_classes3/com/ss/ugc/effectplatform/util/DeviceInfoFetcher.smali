.class public final Lcom/ss/ugc/effectplatform/util/DeviceInfoFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetch(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 6

    .line 15
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "platform"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :try_start_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_24

    goto :goto_2f

    :catchall_24
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :cond_36
    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_47

    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const-string v1, "gl_version"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_47
    sget-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getVendor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gl_vendor"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "gl_renderer"

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getRenderer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_66

    .line 22
    const-string p2, "gl_extension"

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGlExtension()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    if-eqz p1, :cond_8a

    .line 25
    instance-of p2, p1, Landroid/content/Context;

    if-eqz p2, :cond_8a

    .line 26
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getMemoryInfo(Landroid/content/Context;)Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;

    move-result-object p1

    const-string p2, "DeviceUtil.getMemoryInfo(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->getTotalSize()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8a

    .line 28
    const-string v0, "memory_total_size"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_8a
    invoke-static {}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getCpuModel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceUtil.getCpuModel()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cpu_vendor"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p2, "Build.VERSION.RELEASE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "os_version"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
