.class public final Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 220
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    .registers 2

    .line 231
    # getter for: Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    invoke-static {}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 234
    # getter for: Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    invoke-static {}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    if-nez p0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    return-object p0

    .line 232
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Please initialize AlgorithmRepository first!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 3

    const-string p0, "effectConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->access$setINSTANCE$cp(Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 1

    .line 238
    # getter for: Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    invoke-static {}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
