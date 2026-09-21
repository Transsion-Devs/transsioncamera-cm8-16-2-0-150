.class public final Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appContext:Ljava/lang/Object;

.field private final exclusionPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->appContext:Ljava/lang/Object;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exclusionPattern:Ljava/lang/String;

    return-void
.end method

.method private final open(Ljava/lang/String;)Lbytekn/foundation/io/file/FileInputStream;
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->appContext:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/Context;

    if-nez v1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-eqz v0, :cond_5b

    .line 24
    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "(appContext as Context).applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v1, p1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exclusionPattern:Ljava/lang/String;

    if-eqz v2, :cond_48

    new-instance v2, Lkotlin/text/Regex;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exclusionPattern:Ljava/lang/String;

    invoke-direct {v2, p0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_48

    .line 27
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " manually excluded by DownloadableModelSupport.exclusionPattern"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_48
    :goto_48
    new-instance p0, Lbytekn/foundation/io/file/FileInputStream;

    invoke-direct {p0}, Lbytekn/foundation/io/file/FileInputStream;-><init>()V

    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "assetManager.open(fileNa\u2026Manager.ACCESS_STREAMING)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileInputStream;->setInputStream(Ljava/io/InputStream;)V

    return-object p0

    .line 24
    :cond_5b
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.content.Context"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final exists(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    :try_start_6
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->open(Ljava/lang/String;)Lbytekn/foundation/io/file/FileInputStream;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_17
    .catchall {:try_start_6 .. :try_end_a} :catchall_15

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    if-eqz p0, :cond_14

    .line 42
    sget-object p1, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p1, p0}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    :cond_14
    return v0

    :catchall_15
    move-exception p0

    throw p0

    :catch_17
    return v0
.end method

.method public final getAppContext()Ljava/lang/Object;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->appContext:Ljava/lang/Object;

    return-object p0
.end method

.method public final list(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->appContext:Ljava/lang/Object;

    instance-of v0, p0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 76
    :cond_d
    :try_start_d
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "appContext.applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    goto :goto_2a

    :cond_29
    return-object v1

    .line 79
    :goto_2a
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in list file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "effect_platform"

    invoke-virtual {v0, v2, p1, p0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->appContext:Ljava/lang/Object;

    instance-of v0, p0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 56
    :cond_d
    :try_start_d
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "appContext.applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 57
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_50

    .line 58
    :try_start_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 60
    :goto_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_42

    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :catchall_40
    move-exception p0

    goto :goto_4a

    .line 63
    :cond_42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_40

    :try_start_46
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_50

    return-object p0

    .line 57
    :goto_4a
    :try_start_4a
    throw p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v2

    :try_start_4c
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    .line 66
    :catch_50
    sget-object p0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssetUtils#loadJson::jsonFilePath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", file not exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "effect_platform"

    invoke-virtual {p0, v0, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
