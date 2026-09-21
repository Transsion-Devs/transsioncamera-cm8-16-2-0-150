.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;
    .registers 2

    .line 134
    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getINSTANCE$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 137
    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getINSTANCE$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    check-cast p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    return-object p0

    .line 135
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Please initialize AlgorithmRepository first!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInstance(Lcom/ss/ugc/effectplatform/EffectConfig;)Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;
    .registers 3

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 142
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 144
    :cond_e
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object p0

    return-object p0
.end method

.method public final getSDecidedConfig()Lbytekn/foundation/collections/SharedMutableMap;
    .registers 1

    .line 125
    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getSDecidedConfig$cp()Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 4

    const-string p0, "effectConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getINSTANCE$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    new-instance v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 1

    .line 148
    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getINSTANCE$cp()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
