.class public Lcom/transsion/camera/feature/mode/aiartmuseum/util/DumpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDumpIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpJpeg([B)V
    .registers 6

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/dump"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    :cond_11
    if-eqz v1, :cond_53

    .line 32
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/util/DumpUtil;->sDumpIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/util/DumpUtil;->sDumpIndex:I

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss_SSS"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/sql/Date;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/dump/ai_art_museum_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/feature/mode/aiartmuseum/util/DumpUtil;->sDumpIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_thumbnail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0, p0, v1}, Lcom/transsion/camera/utils/FileUtil;->saveByteArrayToFile(Ljava/lang/String;[BZ)Z

    :cond_53
    return-void
.end method
