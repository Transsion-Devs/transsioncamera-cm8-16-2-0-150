.class public Lcom/transsion/camera/app/common/storage/MediaSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;,
        Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;,
        Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;,
        Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;
    }
.end annotation


# instance fields
.field protected final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mMaxTaskNumber:I

.field private final mSaveQueue:Ljava/util/List;

.field private mTaskNumber:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskNumber(Lcom/transsion/camera/app/common/storage/MediaSaver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTaskNumber(Lcom/transsion/camera/app/common/storage/MediaSaver;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaSaver"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mMaxTaskNumber:I

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addRequest]+, queue number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_1f
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    iget v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mMaxTaskNumber:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_3a

    .line 57
    new-instance p1, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;-><init>(Lcom/transsion/camera/app/common/storage/MediaSaver;Lcom/transsion/camera/app/common/storage/MediaSaver-IA;)V

    .line 58
    iget v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mTaskNumber:I

    move-object v2, p1

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_62

    .line 60
    :cond_3a
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_38

    if-eqz v2, :cond_45

    .line 62
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_45
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addRequest]-, queue number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 60
    :goto_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_38

    throw p0
.end method
