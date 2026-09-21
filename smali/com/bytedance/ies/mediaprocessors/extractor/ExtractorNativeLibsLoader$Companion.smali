.class public final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasLoad()Z
    .registers 1

    .line 15
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->hasLoad:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->access$getHasLoad$cp()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized loadLibrary()V
    .registers 5

    monitor-enter p0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;->getHasLoad()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;->setHasLoad(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_45

    .line 20
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    const-string v0, "ExtractorJni"

    invoke-static {v0}, Lcom/bytedance/librarian/Librarian;->loadLibrary(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_24

    :catchall_19
    move-exception v0

    :try_start_1a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_24
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 23
    const-string v1, "ExtractorLibsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load so failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_45

    goto :goto_47

    :catchall_45
    move-exception v0

    goto :goto_49

    .line 26
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_45

    throw v0
.end method

.method public final setHasLoad(Z)V
    .registers 2

    .line 15
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->access$setHasLoad$cp(Z)V

    return-void
.end method
