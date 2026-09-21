.class public abstract Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_DIR:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestCacheHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ai"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->CACHE_DIR:Ljava/lang/String;

    return-void
.end method

.method public static cache(Lcom/transsion/camera/app/common/ai/AIRequest;[B[B)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    if-nez p2, :cond_6

    goto :goto_5a

    .line 43
    :cond_6
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "cache start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getPreviewJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {v4, p1, v0}, Lcom/transsion/camera/utils/FileUtil;->saveByteArrayToFile(Ljava/lang/String;[BZ)Z

    move-result p1

    if-nez p1, :cond_21

    .line 48
    const-string p0, "savePreviewJpeg failed"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 51
    :cond_21
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/ai/AIRequest;->setPreviewJpegPath(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/FileUtil;->saveByteArrayToFile(Ljava/lang/String;[BZ)Z

    move-result p2

    if-nez p2, :cond_37

    .line 55
    const-string p0, "saveRequestJpeg failed"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    invoke-static {v4}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return v0

    .line 59
    :cond_37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestJpegPath(Ljava/lang/String;)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cache end, cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_5a
    :goto_5a
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid request, previewJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "null"

    if-eqz p1, :cond_70

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_71

    :cond_70
    move-object p1, v2

    :goto_71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", requestJpeg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_80

    .line 39
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getPreviewJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest;)Ljava/lang/String;
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getOriginalRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->getFileData(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getRequestJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest;)Ljava/lang/String;
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getOriginalRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 7

    .line 88
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "remove start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getPreviewJpegPath()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1c

    .line 93
    invoke-static {v3}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/ai/AIRequest;->setPreviewJpegPath(Ljava/lang/String;)V

    .line 96
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 98
    invoke-static {v3}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestJpegPath(Ljava/lang/String;)V

    .line 102
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove end, cost: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
