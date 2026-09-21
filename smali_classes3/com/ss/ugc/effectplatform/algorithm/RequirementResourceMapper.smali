.class public final Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final peekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 14
    const-string v1, "effect"

    .line 16
    :try_start_2
    invoke-static {p0}, Lcom/bef/effectsdk/RequirementResourceMapper;->peekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 18
    :catch_7
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "RequirementResourceMapper"

    const-string v4, "not load effect so"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 19
    :try_start_13
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->getLibraryLoader()Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_25

    goto :goto_30

    :catchall_25
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_30
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    .line 23
    sget-object v4, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load effect so error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4e
    move-object v0, v3

    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "RequirementResourceMapper"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 25
    :try_start_5e
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_68

    goto :goto_73

    :catchall_68
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    :cond_73
    :goto_73
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 29
    invoke-static {p0}, Lcom/bef/effectsdk/RequirementResourceMapper;->peekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_a7

    :cond_7e
    move-object p0, v0

    .line 31
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry load error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_95

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RequirementResourceMapper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    .line 32
    new-array p0, p0, [Ljava/lang/String;

    :goto_a7
    return-object p0
.end method
