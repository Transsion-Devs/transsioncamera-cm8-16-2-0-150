.class Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIRequestDao"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    return-void
.end method

.method private entityToContentValues(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Landroid/content/ContentValues;
    .registers 4

    .line 72
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "requestStatus"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getOriginalRequestTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "originalRequestTime"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "requestTime"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v0, "requestLatitude"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "requestLongitude"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "effect"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "effectValue"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getEffectValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "watermark"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "requestInfo"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "previewJpegPath"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getPreviewJpegPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "requestJpegPath"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "responseTime"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "responseCode"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v0, "responseJpegPath"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseJpegPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "responseJpegUri"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseJpegUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method delete(J)V
    .registers 5

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_33

    if-nez p0, :cond_15

    .line 94
    :try_start_8
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "insert failed, database is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_12

    goto :goto_24

    :cond_12
    return-void

    :catchall_13
    move-exception p1

    goto :goto_28

    .line 98
    :cond_15
    const-string v0, "request"

    const-string v1, "id=?"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_13

    .line 99
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_33

    return-void

    :goto_28
    if-eqz p0, :cond_32

    .line 92
    :try_start_2a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    .line 100
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete failed, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method delete(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)V
    .registers 4

    .line 105
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->delete(J)V

    return-void
.end method

.method insert(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)J
    .registers 6

    const-wide/16 v0, -0x1

    .line 57
    :try_start_2
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_17

    if-nez v2, :cond_1c

    .line 59
    :try_start_a
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "insert failed, database is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1a

    if-eqz v2, :cond_19

    .line 64
    :try_start_13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    return-wide v0

    :catch_17
    move-exception p0

    goto :goto_36

    :cond_19
    return-wide v0

    :catchall_1a
    move-exception p0

    goto :goto_2b

    .line 63
    :cond_1c
    :try_start_1c
    const-string v3, "request"

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->entityToContentValues(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Landroid/content/ContentValues;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_1a

    .line 64
    :try_start_27
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_17

    return-wide p0

    :goto_2b
    if-eqz v2, :cond_35

    .line 57
    :try_start_2d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_17

    .line 65
    :goto_36
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method query(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;)Ljava/util/List;
    .registers 13

    .line 141
    const-string v1, "query failed, "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :try_start_7
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_1c

    if-nez v3, :cond_24

    .line 145
    :try_start_f
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "query failed, database is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_20

    if-eqz v3, :cond_181

    .line 180
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    return-object v2

    :catch_1c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_169

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto/16 :goto_15d

    .line 149
    :cond_24
    :try_start_24
    const-string v4, "request"

    .line 150
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->selection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->selectionArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;->orderBy()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 149
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_48
    .catchall {:try_start_24 .. :try_end_39} :catchall_20

    if-nez p0, :cond_50

    .line 152
    :try_start_3b
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "query failed, cursor is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4c

    if-eqz p0, :cond_18

    .line 177
    :try_start_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_20

    goto :goto_18

    :catch_48
    move-exception v0

    move-object p0, v0

    goto/16 :goto_141

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto/16 :goto_135

    .line 156
    :cond_50
    :goto_50
    :try_start_50
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 157
    new-instance p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;-><init>()V

    .line 158
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestId(J)V

    .line 159
    const-string v0, "requestStatus"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestStatus(I)V

    .line 160
    const-string v0, "originalRequestTime"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setOriginalRequestTime(J)V

    .line 161
    const-string v0, "requestTime"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestTime(J)V

    .line 162
    const-string v0, "requestLatitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestLatitude(Ljava/lang/String;)V

    .line 163
    const-string v0, "requestLongitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestLongitude(Ljava/lang/String;)V

    .line 164
    const-string v0, "effect"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setEffect(Ljava/lang/String;)V

    .line 165
    const-string v0, "effectValue"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setEffectValue(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "watermark"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setWatermark(Ljava/lang/String;)V

    .line 167
    const-string v0, "requestInfo"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestInfo(Ljava/lang/String;)V

    .line 168
    const-string v0, "previewJpegPath"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setPreviewJpegPath(Ljava/lang/String;)V

    .line 169
    const-string v0, "requestJpegPath"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setRequestJpegPath(Ljava/lang/String;)V

    .line 170
    const-string v0, "responseTime"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setResponseTime(J)V

    .line 171
    const-string v0, "responseCode"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setResponseCode(I)V

    .line 172
    const-string v0, "responseJpegPath"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setResponseJpegPath(Ljava/lang/String;)V

    .line 173
    const-string v0, "responseJpegUri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->setResponseJpegUri(Ljava/lang/String;)V

    .line 175
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catchall {:try_start_50 .. :try_end_12f} :catchall_4c

    goto/16 :goto_50

    .line 177
    :cond_131
    :try_start_131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_48
    .catchall {:try_start_131 .. :try_end_134} :catchall_20

    goto :goto_159

    :goto_135
    if-eqz p0, :cond_140

    .line 149
    :try_start_137
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13b

    goto :goto_140

    :catchall_13b
    move-exception v0

    move-object p0, v0

    :try_start_13d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_140
    :goto_140
    throw p1
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_141} :catch_48
    .catchall {:try_start_13d .. :try_end_141} :catchall_20

    .line 178
    :goto_141
    :try_start_141
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_141 .. :try_end_159} :catchall_20

    .line 180
    :goto_159
    :try_start_159
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_1c

    goto :goto_181

    :goto_15d
    if-eqz v3, :cond_168

    .line 143
    :try_start_15f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_168

    :catchall_163
    move-exception v0

    move-object p1, v0

    :try_start_165
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_168
    :goto_168
    throw p0
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_169} :catch_1c

    .line 181
    :goto_169
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_181
    :goto_181
    return-object v2
.end method

.method update(II)V
    .registers 7

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6a

    if-nez p0, :cond_16

    .line 125
    :try_start_8
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "update failed, database is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_13

    goto :goto_5b

    :cond_13
    return-void

    :catchall_14
    move-exception p1

    goto :goto_5f

    .line 129
    :cond_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    const-string v1, "requestStatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v1, "request"

    const-string v2, "requestStatus=?"

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 134
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update statusFrom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> statusTo: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updateRows: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_14

    .line 135
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_6a

    return-void

    :goto_5f
    if-eqz p0, :cond_69

    .line 123
    :try_start_61
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p0

    :try_start_66
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception p0

    .line 136
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update failed, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method update(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)V
    .registers 7

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->mDatabase:Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_3c

    if-nez v0, :cond_16

    .line 111
    :try_start_8
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "update failed, database is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_13

    goto :goto_2d

    :cond_13
    return-void

    :catchall_14
    move-exception p0

    goto :goto_31

    .line 115
    :cond_16
    const-string v1, "request"

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->entityToContentValues(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Landroid/content/ContentValues;

    move-result-object p0

    const-string v2, "id=?"

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_14

    .line 117
    :goto_2d
    :try_start_2d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_3c

    return-void

    :goto_31
    if-eqz v0, :cond_3b

    .line 109
    :try_start_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p1

    :try_start_38
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    .line 118
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
