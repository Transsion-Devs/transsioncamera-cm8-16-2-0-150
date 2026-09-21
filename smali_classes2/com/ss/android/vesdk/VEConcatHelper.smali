.class Lcom/ss/android/vesdk/VEConcatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "VEConcatHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 29
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x0

    .line 31
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 32
    :goto_a
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge p0, v2, :cond_2b

    .line 33
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 34
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 35
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object v1, v2

    goto :goto_28

    :catch_26
    move-exception p0

    goto :goto_2f

    :cond_28
    :goto_28
    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    .line 39
    :cond_2b
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_26

    return-object v1

    .line 41
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static isCodecsValid([Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 11
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_39

    .line 12
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/ss/android/vesdk/VEConcatHelper;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_f

    move-object v0, v3

    :cond_f
    if-eqz v0, :cond_1a

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_1a
    sget-object p0, Lcom/ss/android/vesdk/VEConcatHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCodecsValid false mime= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lastMime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 23
    :cond_39
    sget-object p0, Lcom/ss/android/vesdk/VEConcatHelper;->TAG:Ljava/lang/String;

    const-string v0, "isCodecsValid"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
