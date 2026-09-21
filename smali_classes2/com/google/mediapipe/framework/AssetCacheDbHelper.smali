.class public Lcom/google/mediapipe/framework/AssetCacheDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/AssetCacheDbHelper$AssetCacheEntry;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field public static final DATABASE_NAME:Ljava/lang/String; = "mediapipe.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE AssetVersion (_id INTEGER PRIMARY KEY,asset TEXT NOT NULL UNIQUE,cache_path TEXT,version INTEGER )"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS AssetVersion"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static final TEXT_UNIQUE_TYPE:Ljava/lang/String; = " TEXT NOT NULL UNIQUE"

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 60
    const-string v2, "mediapipe.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 147
    const-string v1, "AssetVersion"

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 159
    const-string v0, "cache_path"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 164
    :cond_10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_36

    .line 167
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_36

    .line 168
    sget-object p2, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p2}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p2

    check-cast p2, Lcom/google/common/flogger/FluentLogger$Api;

    const-string p3, "Stale cached file: %s can\'t be deleted."

    invoke-interface {p2, p3, p1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_36
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_10

    .line 173
    :cond_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public checkVersion(Ljava/lang/String;I)Z
    .registers 7

    .line 69
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 71
    const-string v1, "version"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 72
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v3, "asset = ?"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    return v0

    .line 80
    :cond_1c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 81
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-ne p1, p2, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0
.end method

.method public insertAsset(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 106
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    const-string v1, "asset = ? and cache_path != ?"

    .line 110
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {p0, v0, v1, v2}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string v1, "asset"

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p1, "cache_path"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string p1, "version"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 117
    const-string p3, "AssetVersion"

    invoke-virtual {v0, p3, p1, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-eqz p0, :cond_34

    return-void

    .line 124
    :cond_34
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t insert entry into the mediapipe db."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invalidateCache(I)V
    .registers 4

    .line 93
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string v1, "version != ?"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    const-string p0, "AssetVersion"

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 130
    const-string p0, "CREATE TABLE AssetVersion (_id INTEGER PRIMARY KEY,asset TEXT NOT NULL UNIQUE,cache_path TEXT,version INTEGER )"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 136
    const-string p2, "DROP TABLE IF EXISTS AssetVersion"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
