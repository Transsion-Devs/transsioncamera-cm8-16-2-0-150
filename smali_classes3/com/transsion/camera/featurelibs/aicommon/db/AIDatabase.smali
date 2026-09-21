.class Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 69
    const-string p0, "CREATE TABLE IF NOT EXISTS request (id INTEGER PRIMARY KEY AUTOINCREMENT,requestStatus INTEGER,originalRequestTime LONG,requestTime LONG,requestLatitude TEXT,requestLongitude TEXT,effect TEXT,effectValue TEXT,watermark TEXT,requestInfo TEXT,previewJpegPath TEXT,requestJpegPath TEXT,responseTime LONG,responseCode INTEGER,responseJpegPath TEXT,responseJpegUri TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 74
    const-string p2, "DROP TABLE IF EXISTS request"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
