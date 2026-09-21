.class public final Lcom/ss/ugc/effectplatform/listener/CallbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final effectPlatformBaseListeners:Lbytekn/foundation/collections/SharedMutableMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->effectPlatformBaseListeners:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method


# virtual methods
.method public final getEffectPlatformBaseListener(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;
    .registers 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->effectPlatformBaseListeners:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    move-object p0, v0

    :cond_11
    check-cast p0, Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    if-eqz p0, :cond_16

    return-object p0

    :cond_16
    return-object v0
.end method

.method public final putEffectPlatformBaseListener(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V
    .registers 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->effectPlatformBaseListeners:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeEffectPlatformBaseListener(Ljava/lang/String;)V
    .registers 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->effectPlatformBaseListeners:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
