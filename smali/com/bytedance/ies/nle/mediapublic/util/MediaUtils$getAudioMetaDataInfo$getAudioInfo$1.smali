.class final Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->getAudioMetaDataInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;
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
.field final synthetic $path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;
    .registers 6

    const/16 v0, 0xa

    .line 395
    new-array v0, v0, [I

    .line 396
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VEUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result v1

    .line 397
    iget-object v2, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    goto :goto_21

    :cond_14
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 398
    :goto_21
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    invoke-direct {v0, v3}, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;-><init>(I)V

    goto :goto_51

    :cond_27
    if-nez v1, :cond_35

    const/4 v1, 0x3

    .line 401
    aget v0, v0, v1

    if-lez v0, :cond_35

    .line 402
    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    invoke-direct {v1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;-><init>(I)V

    move-object v0, v1

    goto :goto_51

    .line 406
    :cond_35
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 408
    :try_start_3a
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 410
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    goto :goto_4c

    :cond_48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_4c

    .line 414
    :catch_4c
    :goto_4c
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    invoke-direct {v0, v3}, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;-><init>(I)V

    .line 418
    :goto_51
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->AUDIO_INFO_CACHE:Landroid/util/LruCache;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->access$getAUDIO_INFO_CACHE$p()Landroid/util/LruCache;

    move-result-object v1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->$path:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;->invoke()Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    move-result-object p0

    return-object p0
.end method
