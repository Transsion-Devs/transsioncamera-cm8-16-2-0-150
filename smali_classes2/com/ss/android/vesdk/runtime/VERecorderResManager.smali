.class public abstract Lcom/ss/android/vesdk/runtime/VERecorderResManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConcatSegmentAudioPath:Ljava/lang/String;

.field private mConcatSegmentVideoPath:Ljava/lang/String;

.field private mConcatSementAudioVideoMixedVideoPath:Ljava/lang/String;

.field private mSegmentAudioPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSegmentDirPath:Ljava/lang/String;

.field private mSegmentVideoPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorkspace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mWorkspace:Ljava/lang/String;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSegmentAudioPath(Ljava/lang/String;)V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSegmentVideoPath(Ljava/lang/String;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public delSegmentAudioPath()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 173
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 174
    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public delSegmentVideoPath()Ljava/lang/String;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 139
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 141
    :cond_17
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0x69

    const-string v1, "segment video list size is 0"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public genConcatSegmentAudioPath()V
    .registers 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mWorkspace:Ljava/lang/String;

    const-string v2, "concat"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/runtime/VEResManager;->getFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mConcatSegmentAudioPath:Ljava/lang/String;

    return-void
.end method

.method public genConcatSegmentVideoPath()V
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mWorkspace:Ljava/lang/String;

    const-string v2, "concat"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/runtime/VEResManager;->getFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mConcatSegmentVideoPath:Ljava/lang/String;

    return-void
.end method

.method public abstract genSegmentAudioPath(I)Ljava/lang/String;
.end method

.method public abstract genSegmentVideoPath(I)Ljava/lang/String;
.end method

.method public getConcatSegmentAudioPath()Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mConcatSegmentAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getConcatSegmentVideoPath()Ljava/lang/String;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mConcatSegmentVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmentAudioPathList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    return-object p0
.end method

.method public abstract getSegmentDirPath()Ljava/lang/String;
.end method

.method public getSegmentVideoPathList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    return-object p0
.end method

.method public getTempVideoFilePath()Ljava/lang/String;
    .registers 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mWorkspace:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "temp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspace()Ljava/lang/String;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mWorkspace:Ljava/lang/String;

    return-object p0
.end method

.method public release()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 83
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iput-object v1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentVideoPathList:Ljava/util/List;

    .line 87
    :cond_a
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 88
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iput-object v1, p0, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->mSegmentAudioPathList:Ljava/util/List;

    :cond_13
    return-void
.end method
