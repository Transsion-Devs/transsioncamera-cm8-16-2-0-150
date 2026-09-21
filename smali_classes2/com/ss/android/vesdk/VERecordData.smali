.class public Lcom/ss/android/vesdk/VERecordData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;,
        Lcom/ss/android/vesdk/VERecordData$FILETYPE;
    }
.end annotation


# static fields
.field public static final AUDIOEFFECTS:Ljava/lang/String; = "audioEffects"

.field public static final AUDIOLENGTHS:Ljava/lang/String; = "audioLengths"

.field public static final AUDIOPATHS:Ljava/lang/String; = "audioPaths"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VERecordData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATAFIELD:[Ljava/lang/String;

.field public static final DUATSTARTTIME:Ljava/lang/String; = "duatStartTime"

.field public static final ENCODEMETHOD:Ljava/lang/String; = "encodeMethod"

.field public static final ENCODEMODE:Ljava/lang/String; = "encodeMode"

.field public static final MUSICSTARTTIME:Ljava/lang/String; = "musicStartTime"

.field public static final NEWSYNC:Ljava/lang/String; = "newSync"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final RANDOM:Ljava/lang/String; = "random"

.field public static final SPEEDS:Ljava/lang/String; = "speeds"

.field static final TAG:Ljava/lang/String;

.field public static final VIDEOCOUNTS:Ljava/lang/String; = "counts"

.field public static final VIDEOLENGTHS:Ljava/lang/String; = "videoLengths"

.field public static final VIDEOPATHS:Ljava/lang/String; = "videoPaths"

.field public static final VIDEOQUALITY:Ljava/lang/String; = "videoQuality"

.field public static final audioSuffix:Ljava/lang/String; = "_frag_a"

.field public static final suffixs:[Ljava/lang/String;

.field public static final videoSuffix:Ljava/lang/String; = "_frag_v"


# instance fields
.field public concatAudio:Ljava/lang/String;

.field public concatVideo:Ljava/lang/String;

.field private mSegmentDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mUseMusic:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 29
    new-instance v0, Lcom/ss/android/vesdk/VERecordData$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VERecordData$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VERecordData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    const-class v0, Lcom/ss/android/vesdk/VERecordData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    .line 235
    const-string v12, "encodeMethod"

    const-string v13, "videoLengths"

    const-string v1, "counts"

    const-string v2, "audioLengths"

    const-string v3, "speeds"

    const-string v4, "musicStartTime"

    const-string v5, "encodeMode"

    const-string v6, "offset"

    const-string v7, "videoQuality"

    const-string v8, "random"

    const-string v9, "duatStartTime"

    const-string v10, "audioEffects"

    const-string v11, "newSync"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERecordData;->DATAFIELD:[Ljava/lang/String;

    .line 239
    const-string v0, "_frag_v"

    const-string v1, "_frag_a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERecordData;->suffixs:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;",
            ">;Z)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    .line 58
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    return-void
.end method

.method public static covertJsonToRecordData(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 9

    .line 335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 336
    sget-object p0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string p1, "Segmented video path is empty."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 340
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 345
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "data.txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 349
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    move v1, v0

    .line 350
    :goto_5d
    sget-object v3, Lcom/ss/android/vesdk/VERecordData;->DATAFIELD:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_ac

    .line 351
    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    move v4, v0

    move-object v5, v2

    .line 354
    :goto_6c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_a1

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v6, :cond_9e

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 360
    :cond_a1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 363
    :cond_ac
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_af} :catch_b0

    return v0

    :catch_b0
    move-exception p0

    .line 366
    sget-object p1, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v0, "Reading file contents error"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static covertRecordDataToJson(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 13

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 271
    sget-object p0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string p1, "Segmented video path is empty."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 275
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    :cond_37
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "data.txt"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 286
    sget-object p1, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not exist"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 294
    :cond_6f
    :try_start_6f
    new-instance p0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 297
    sget-object v2, Lcom/ss/android/vesdk/VERecordData;->DATAFIELD:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_83
    if-ge v5, v3, :cond_c0

    aget-object v6, v2, v5

    .line 298
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 299
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_98

    const-string v8, "offset"

    if-eq v6, v8, :cond_98

    return-object v0

    :catch_96
    move-exception p0

    goto :goto_c7

    .line 303
    :cond_98
    const-string v8, "counts"

    if-ne v6, v8, :cond_a3

    .line 304
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    :cond_a3
    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 308
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move v9, v4

    .line 309
    :goto_af
    array-length v10, v7

    if-ge v9, v10, :cond_ba

    .line 310
    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_af

    .line 312
    :cond_ba
    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 314
    :cond_c0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 315
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_c6} :catch_96

    return-object p1

    .line 317
    :goto_c7
    sget-object p1, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "Reading file contents error"

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static create(Lcom/ss/android/vesdk/runtime/VERecorderResManager;Z)Lcom/ss/android/vesdk/VERecordData;
    .registers 27

    .line 78
    const-string v0, "\t"

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 81
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "Segmented video path is empty."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 85
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 95
    new-array v7, v6, [Ljava/lang/String;

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_73

    .line 98
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 102
    :cond_73
    :try_start_73
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 103
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 108
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "not found count"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_94
    move-exception v0

    goto/16 :goto_1f8

    .line 111
    :cond_97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 114
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 116
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "not found audioLength"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 119
    :cond_b1
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 122
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 124
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "not found speed"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 127
    :cond_c7
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 130
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_dd

    .line 132
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "not found music start time"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 137
    :cond_dd
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v12, v6

    :goto_e2
    const/16 v13, 0x8

    if-ge v12, v13, :cond_ec

    .line 139
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v12, v12, 0x1

    goto :goto_e2

    .line 143
    :cond_ec
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 144
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_fe

    .line 145
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v12, "not found video length"

    invoke-static {v0, v12}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_102

    .line 147
    :cond_fe
    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 150
    :goto_102
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_108} :catch_94

    if-eqz v8, :cond_1f0

    .line 158
    array-length v0, v9

    if-ne v8, v0, :cond_1f0

    array-length v0, v10

    if-ne v8, v0, :cond_1f0

    .line 159
    new-instance v0, Lcom/ss/android/vesdk/VERecordData;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VERecordData;-><init>()V

    .line 160
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    .line 166
    array-length v2, v11

    const/4 v3, 0x1

    if-ne v2, v8, :cond_125

    if-eqz p1, :cond_125

    .line 167
    iput-boolean v3, v0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    goto :goto_127

    .line 169
    :cond_125
    iput-boolean v6, v0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    :goto_127
    if-gt v3, v8, :cond_1ef

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_frag_v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 175
    iget-boolean v2, v0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    if-eqz v2, :cond_144

    move-object/from16 v16, v5

    goto :goto_15a

    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_frag_a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .line 178
    :goto_15a
    iget-boolean v2, v0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    const-wide/16 v14, 0x3e8

    const-wide/16 v17, 0x0

    if-eqz v2, :cond_180

    array-length v4, v11

    if-le v4, v3, :cond_180

    .line 179
    aget-object v2, v11, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v21

    :goto_17d
    mul-long v19, v19, v14

    goto :goto_1a3

    :cond_180
    if-eqz v2, :cond_192

    .line 180
    array-length v4, v7

    if-lt v4, v3, :cond_192

    add-int/lit8 v2, v3, -0x1

    .line 181
    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_17d

    :cond_192
    if-nez v2, :cond_1a1

    add-int/lit8 v2, v3, -0x1

    .line 183
    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_1a3

    :cond_1a1
    move-wide/from16 v19, v17

    :goto_1a3
    cmp-long v2, v19, v17

    if-gtz v2, :cond_1cb

    const/16 v2, 0xa

    .line 187
    new-array v2, v2, [I

    .line 188
    invoke-static {v13, v2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 189
    aget v2, v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v14, v2

    .line 190
    sget-object v2, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioLength is 0, use file length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cd

    :cond_1cb
    move-wide/from16 v14, v19

    .line 192
    :goto_1cd
    new-instance v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v10, v2

    .line 196
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v19

    const-wide/16 v20, 0x0

    const/16 v24, 0x1

    move-wide/from16 v17, v14

    move-wide/from16 v22, v14

    invoke-direct/range {v12 .. v24}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;-><init>(Ljava/lang/String;JLjava/lang/String;JFJJZ)V

    .line 199
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_127

    :cond_1ef
    return-object v0

    .line 202
    :cond_1f0
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "Read file contents error, segmented information mismatch!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 153
    :goto_1f8
    sget-object v1, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v2, "Reading file contents error"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static getVideoRecordFilePath(Ljava/lang/String;ILcom/ss/android/vesdk/VERecordData$FILETYPE;)Ljava/lang/String;
    .registers 4

    .line 255
    sget-object v0, Lcom/ss/android/vesdk/VERecordData$FILETYPE;->VIDEO:Lcom/ss/android/vesdk/VERecordData$FILETYPE;

    if-ne p2, v0, :cond_7

    const-string p2, "_frag_v"

    goto :goto_9

    :cond_7
    const-string p2, "_frag_a"

    .line 256
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSegmentData(ILcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)I
    .registers 5

    .line 491
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "addSegmentData..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_19

    .line 493
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_12

    goto :goto_19

    .line 498
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 494
    :cond_19
    :goto_19
    const-string p0, "Parameter error"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSegmentData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    return-object p0
.end method

.method public isSegmentOriginLenth()Z
    .registers 13

    .line 380
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 381
    iget-wide v1, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    iget-wide v3, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 382
    # getter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J
    invoke-static {v0}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$000(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J

    move-result-wide v5

    # getter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J
    invoke-static {v0}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$100(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    div-long/2addr v5, v3

    .line 383
    sget-object v7, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "segmentData.mTrimOut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " segmentData.mTrimIn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " segmentData.mVideoLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "segmentData.mCutTrimOut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J
    invoke-static {v0}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$000(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " segmentData.mCutTrimIn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J
    invoke-static {v0}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$100(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " segmentData.mAudioLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-boolean v8, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    if-eqz v8, :cond_8f

    iget-wide v8, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    div-long v10, v8, v3

    cmp-long v0, v1, v10

    if-ltz v0, :cond_8f

    div-long/2addr v8, v3

    cmp-long v0, v5, v8

    if-gez v0, :cond_6

    .line 386
    :cond_8f
    const-string p0, "is not Segment Origin Lenth"

    invoke-static {v7, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_96
    const/4 p0, 0x1

    return p0
.end method

.method public isUseMusic()Z
    .registers 1

    .line 517
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    return p0
.end method

.method public removeSegmentData(I)Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;
    .registers 4

    .line 473
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "removeSegmentData..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1b

    .line 475
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_12

    goto :goto_1b

    .line 480
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    return-object p0

    .line 476
    :cond_1b
    :goto_1b
    const-string p0, "Parameter error"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceSegmentData(ILcom/ss/android/vesdk/VERecordData;)Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;
    .registers 13

    .line 439
    sget-object v0, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    const-string v1, "replaceSegmentData..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_61

    .line 441
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    iget-object v1, p2, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    if-eqz v1, :cond_61

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_61

    .line 445
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 447
    iget-wide v1, v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    .line 450
    iget-object p2, p2, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 452
    iget-wide v8, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    add-long/2addr v8, v5

    sub-long/2addr v8, v1

    cmp-long v8, v8, v3

    if-ltz v8, :cond_54

    sub-long/2addr v1, v5

    .line 454
    iput-wide v1, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    iput-wide v1, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    .line 455
    # setter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J
    invoke-static {v7, v1, v2}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$002(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    .line 456
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {p0, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0

    .line 459
    :cond_54
    iget-object v8, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    add-int/lit8 v9, p1, 0x1

    invoke-interface {v8, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 460
    iget-wide v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    add-long/2addr v5, v7

    move p1, v9

    goto :goto_2f

    :cond_60
    return-object v0

    .line 442
    :cond_61
    :goto_61
    const-string p0, "Parameter error"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setTimeRange(JJ)I
    .registers 24

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    .line 403
    sget-object v4, Lcom/ss/android/vesdk/VERecordData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTimeRange, start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v2, v0

    if-gtz v4, :cond_29

    const/16 v0, -0x64

    return v0

    :cond_29
    move-object/from16 v4, p0

    .line 411
    iget-object v4, v4, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 412
    iget-wide v11, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    iget-wide v13, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    sub-long/2addr v11, v13

    cmp-long v15, v7, v0

    if-ltz v15, :cond_50

    add-long v15, v7, v11

    cmp-long v15, v15, v2

    if-lez v15, :cond_7f

    :cond_50
    add-long v15, v7, v11

    cmp-long v15, v15, v0

    if-lez v15, :cond_77

    cmp-long v15, v7, v2

    if-ltz v15, :cond_5b

    goto :goto_77

    :cond_5b
    sub-long v15, v0, v7

    add-long/2addr v15, v13

    sub-long v17, v2, v7

    add-long v17, v17, v13

    cmp-long v10, v15, v13

    if-lez v10, :cond_67

    move-wide v13, v15

    .line 421
    :cond_67
    # setter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J
    invoke-static {v9, v13, v14}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$102(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J

    .line 422
    iget-wide v13, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    cmp-long v10, v17, v13

    if-lez v10, :cond_71

    goto :goto_73

    :cond_71
    move-wide/from16 v13, v17

    :goto_73
    # setter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J
    invoke-static {v9, v13, v14}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$002(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J

    goto :goto_7f

    .line 415
    :cond_77
    :goto_77
    # setter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J
    invoke-static {v9, v5, v6}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$102(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J

    .line 416
    # setter for: Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J
    invoke-static {v9, v5, v6}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->access$002(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J

    .line 417
    iput-boolean v10, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    :cond_7f
    :goto_7f
    add-long/2addr v7, v11

    goto :goto_34

    :cond_81
    return v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 527
    iget-object p2, p0, Lcom/ss/android/vesdk/VERecordData;->mSegmentDataList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 528
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VERecordData;->mUseMusic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 529
    iget-object p2, p0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
