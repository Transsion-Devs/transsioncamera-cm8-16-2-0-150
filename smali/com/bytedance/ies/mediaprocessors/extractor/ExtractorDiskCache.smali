.class public final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;
.super Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$Companion;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS FEATURE_CACHE(ID INTEGER PRIMARY KEY AUTOINCREMENT, ASSET_ID TEXT NOT NULL, ALG_KEY TEXT NOT NULL,ALG_TYPE INT NOT NULL,RESULT BLOB NOT NULL, CREATE_TIME LONG NOT NULL);"

.field public static final Companion:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$Companion;

.field private static final DELETE_STR_TYPE_SQL:Ljava/lang/String; = "DELETE FROM FEATURE_CACHE WHERE ALG_STR_TYPE IN (%s);"

.field private static final DELETE_TYPE_SQL:Ljava/lang/String; = "DELETE FROM FEATURE_CACHE WHERE ALG_TYPE IN (%s);"

.field private static final DROP_TABLE_SQL:Ljava/lang/String; = "DROP TABLE IF EXISTS FEATURE_CACHE;"

.field private static final ENTRY_ALG_KEY:Ljava/lang/String; = "ALG_KEY"

.field private static final ENTRY_ALG_STR_TYPE:Ljava/lang/String; = "ALG_STR_TYPE"

.field private static final ENTRY_ALG_TYPE:Ljava/lang/String; = "ALG_TYPE"

.field private static final ENTRY_ASSET_ID:Ljava/lang/String; = "ASSET_ID"

.field private static final ENTRY_CREATE_TIME:Ljava/lang/String; = "CREATE_TIME"

.field private static final ENTRY_ID:Ljava/lang/String; = "ID"

.field private static final ENTRY_RESULT:Ljava/lang/String; = "RESULT"

.field private static final TABLE_NAME:Ljava/lang/String; = "FEATURE_CACHE"

.field private static final TAG:Ljava/lang/String; = "ExtractorDiskCache"

.field private static final UPGRADE_VERSION3:Ljava/lang/String; = "ALTER TABLE FEATURE_CACHE ADD COLUMN ALG_STR_TYPE TEXT DEFAULT NULL;"


# instance fields
.field private final config:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

.field private final context:Landroid/content/Context;

.field private final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->Companion:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->config:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    .line 58
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getDbPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 59
    sget-object v7, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;->INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    const/4 p0, 0x1

    .line 75
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 76
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    iput-object v1, v2, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 78
    :try_start_31
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_4e

    const/4 p1, 0x0

    if-eqz p0, :cond_4a

    .line 82
    :try_start_3a
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_41

    .line 80
    :try_start_3c
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4e

    move-object p1, p2

    goto :goto_4a

    :catchall_41
    move-exception v0

    move-object p1, v0

    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    move-object p2, v0

    :try_start_46
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 78
    :cond_4a
    :goto_4a
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$appendSql(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->appendSql(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method public static final synthetic access$hasSQLHistory(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->hasSQLHistory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseCursorToResult(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->parseCursorToResult(Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$upgradeDBVersion3(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->upgradeDBVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private final appendSql(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    .registers 6

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_33

    .line 305
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1d
    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 108
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_26
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_c

    .line 114
    :cond_33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "result.toString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final hasSQLHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 226
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 227
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v1, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching$default(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 241
    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method private final parseCursorToResult(Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    .registers 7

    .line 120
    const-string p0, "ASSET_ID"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    const-string v0, "ALG_KEY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "ALG_TYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 123
    const-string v2, "RESULT"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 124
    const-string v3, "ALG_STR_TYPE"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 307
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 p1, 0x0

    goto :goto_3a

    :cond_36
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3a
    if-eqz p1, :cond_3d

    goto :goto_3f

    .line 124
    :cond_3d
    const-string p1, ""

    .line 127
    :goto_3f
    new-instance v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    invoke-direct {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>()V

    .line 128
    invoke-virtual {v3, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setAssetId(Ljava/lang/String;)V

    .line 129
    invoke-static {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setAlgorithmType(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V

    .line 130
    invoke-virtual {v3, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setAlgorithmStringType(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setAlgorithmKey(Ljava/lang/String;)V

    .line 132
    array-length p0, v2

    int-to-long p0, p0

    invoke-virtual {v3, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setResultLength(J)V

    .line 133
    invoke-virtual {v3, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->setResultNative([B)V

    return-object v3
.end method

.method private final runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 91
    const-string p0, ""

    const-string v0, "ExtractorDiskCache"

    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p2, :cond_15

    .line 93
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Unit;

    goto :goto_15

    :catchall_13
    move-exception p2

    goto :goto_44

    .line 22
    :cond_15
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute sql: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_28

    move-object v1, p1

    goto :goto_29

    :cond_28
    move-object v1, p0

    :goto_29
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " costTime = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 91
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_13

    goto :goto_4e

    :goto_44
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 97
    :goto_4e
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Tag = "

    if-eqz v1, :cond_73

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " run success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_73
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9a

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", message = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_90

    move-object p0, p1

    :cond_90
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return-void
.end method

.method static synthetic runInSqlCatching$default(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 90
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final upgradeDBVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 87
    const-string p0, "ALTER TABLE FEATURE_CACHE ADD COLUMN ALG_STR_TYPE TEXT DEFAULT NULL;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 3

    .line 245
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    const-string p1, "clear"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 259
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearAll$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearAll$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)V

    const-string v1, "clearAll"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
    .registers 6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2f

    .line 309
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1d
    check-cast v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    if-eqz v1, :cond_26

    .line 279
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_26
    invoke-virtual {v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_c

    .line 283
    :cond_2f
    new-instance p1, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$3;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$3;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/StringBuilder;)V

    const-string v0, "clearTypes by VecAlgorithmType"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 3

    .line 267
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    const-string p1, "clearTypes by VecString"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public delete()V
    .registers 3

    .line 292
    invoke-super {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->delete()V

    .line 293
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$delete$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$delete$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)V

    const-string v1, "delete"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getConfig()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->config:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->context:Landroid/content/Context;

    return-object p0
.end method

.method public query(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 4

    .line 139
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>()V

    .line 140
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V

    const-string p1, "query"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    .registers 5

    .line 164
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 165
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-string p1, "query"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 180
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    return-object p0
.end method

.method public save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
    .registers 3

    .line 190
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V

    const-string p1, "save"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->runInSqlCatching(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
    .registers 3

    .line 184
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>()V

    .line 185
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Z

    .line 186
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V

    return-void
.end method
