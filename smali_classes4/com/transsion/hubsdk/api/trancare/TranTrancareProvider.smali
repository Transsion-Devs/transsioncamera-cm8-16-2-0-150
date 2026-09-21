.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;
    }
.end annotation


# static fields
.field private static final CONFIG_SHEET_DURATION:Ljava/lang/String; = "duration"

.field private static final CONFIG_SHEET_EMPTY_START_TIME:Ljava/lang/String; = "e_s_t"

.field private static final CONFIG_SHEET_ITEM_NAME:Ljava/lang/String; = "name"

.field private static final CONFIG_SHEET_NAME:Ljava/lang/String; = "trancare_config"

.field private static final CONFIG_SHEET_VERSION:Ljava/lang/String; = "version"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final TAG:Ljava/lang/String; = "TranTrancareProvider"

.field private static final TRAN_INSERT_CACHE_FLAG:Ljava/lang/String; = "__cache"

.field private static final TRAN_LOG_BURIED_DATABASE:Ljava/lang/String; = "__buried"

.field private static final TRAN_LOG_DATACENTER_DATABASE:Ljava/lang/String; = "__datacenter"

.field public static final TRAN_LOG_DATA_PTS:Ljava/lang/String; = "__pts"

.field private static final TRAN_LOG_URI_ROOT:Ljava/lang/String; = "content://com.transsion.TrancareProvider/"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

.field private static sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
    .registers 1

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    return-object v0
.end method

.method static synthetic access$102(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;)Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
    .registers 1

    .line 27
    sput-object p0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
    .registers 1

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;)Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
    .registers 1

    .line 27
    sput-object p0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    return-object p0
.end method

.method public static deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 383
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->deEncryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 370
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->encryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
    .registers 5

    .line 328
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 329
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .registers 3

    .line 343
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .line 74
    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;JJ)Landroid/net/Uri;
    .registers 18

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 96
    invoke-interface/range {v1 .. v9}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;JJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;JJ)Landroid/net/Uri;
    .registers 14

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 131
    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;JJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12

    .line 150
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 151
    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 169
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 170
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 191
    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 210
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 211
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isKeyGuardUnlocked(Landroid/content/Context;)Z
    .registers 2

    .line 357
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->isKeyGuardUnlocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    .line 236
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 237
    invoke-interface/range {v1 .. v9}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 261
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 262
    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16

    .line 287
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 288
    invoke-interface/range {v1 .. v8}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12

    .line 312
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 313
    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
