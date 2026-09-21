.class public Lcom/ss/android/vesdk/runtime/VEEditorResManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAudioPaths:[Ljava/lang/String;

.field private mComposedVideoPath:Ljava/lang/String;

.field private mCropedAudioPath:Ljava/lang/String;

.field private mCropedVideoPath:Ljava/lang/String;

.field public mOriginalSoundTrackIndex:I

.field public mOriginalSoundTrackType:I

.field public mReverseAudioDone:Z

.field public mReverseAudioPaths:[Ljava/lang/String;

.field private mReverseCacheFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mReverseDone:Z

.field public mReverseVideoPath:[Ljava/lang/String;

.field public mTimeMode:I

.field public mTransitions:[Ljava/lang/String;

.field public mVideoPaths:[Ljava/lang/String;

.field private mWorkSpace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 70
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioDone:Z

    .line 77
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTimeMode:I

    .line 122
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mWorkSpace:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseCacheFiles:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clearReverseCacheFiles()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseCacheFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 189
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseCacheFiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_11
    :goto_11
    if-ge v1, v0, :cond_2a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 190
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_11

    :cond_2a
    return-void
.end method

.method public genComposedVideoPath()Ljava/lang/String;
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mWorkSpace:Ljava/lang/String;

    const-string v1, "compose"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/runtime/VEResManager;->getFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "composed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public genReverseVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mWorkSpace:Ljava/lang/String;

    const-string v2, "concat"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/runtime/VEResManager;->getFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "reverse"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseCacheFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public genSeqAudioPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mWorkSpace:Ljava/lang/String;

    const-string v2, "concat"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/runtime/VEResManager;->getFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "reverse"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".wav"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseCacheFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getWorkspace()Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mWorkSpace:Ljava/lang/String;

    return-object p0
.end method
