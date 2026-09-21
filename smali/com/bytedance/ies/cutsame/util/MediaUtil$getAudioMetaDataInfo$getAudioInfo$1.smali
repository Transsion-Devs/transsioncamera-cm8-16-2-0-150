.class final Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/util/MediaUtil;->getAudioMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
    .registers 6

    const/16 v0, 0xa

    .line 238
    new-array v0, v0, [I

    .line 239
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VEUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    goto :goto_21

    :cond_14
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 241
    :goto_21
    new-instance v0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    invoke-direct {v0, v3}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(I)V

    goto :goto_64

    :cond_27
    if-nez v1, :cond_35

    const/4 v1, 0x3

    .line 244
    aget v0, v0, v1

    if-lez v0, :cond_35

    .line 245
    new-instance v1, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    invoke-direct {v1, v0}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(I)V

    move-object v0, v1

    goto :goto_64

    .line 249
    :cond_35
    sget-object v0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getMediaMetadataRetriever(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    const/16 v1, 0x9

    .line 251
    :try_start_41
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_48

    goto :goto_4c

    :cond_48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_55

    .line 256
    :catch_4c
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_5f

    :catch_50
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5f

    :catchall_55
    move-exception p0

    .line 256
    :try_start_56
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5e
    throw p0

    .line 261
    :goto_5f
    new-instance v0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    invoke-direct {v0, v3}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(I)V

    .line 265
    :goto_64
    # getter for: Lcom/bytedance/ies/cutsame/util/MediaUtil;->AUDIO_INFO_CACHE:Landroid/util/LruCache;
    invoke-static {}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->access$getAUDIO_INFO_CACHE$p()Landroid/util/LruCache;

    move-result-object v1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;->invoke()Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    move-result-object p0

    return-object p0
.end method
