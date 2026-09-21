.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public encryptionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
    .registers 5

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .registers 3

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
    .registers 7

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;JJ)Landroid/net/Uri;
    .registers 9

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;JJ)Landroid/net/Uri;
    .registers 7

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isKeyGuardUnlocked(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 0
    const/4 p0, 0x0

    return p0
.end method
