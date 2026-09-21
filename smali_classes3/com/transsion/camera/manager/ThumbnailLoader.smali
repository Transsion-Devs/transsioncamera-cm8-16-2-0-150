.class public Lcom/transsion/camera/manager/ThumbnailLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;,
        Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;,
        Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THUMBNAIL_SIZE:Landroid/util/Size;

.field private static final sCameraPath:Ljava/lang/String;


# instance fields
.field private mLoadThumbnailTask:Landroid/os/AsyncTask;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTHUMBNAIL_SIZE()Landroid/util/Size;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->THUMBNAIL_SIZE:Landroid/util/Size;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsCameraPath()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailLoader"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->THUMBNAIL_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private cancelLoadThumbnail()V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 138
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method


# virtual methods
.method public loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .registers 7

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/manager/ThumbnailLoader;->cancelLoadThumbnail()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_6
    new-instance v1, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/manager/ThumbnailLoader-IA;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 122
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public loadThumbnailByUri(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V
    .registers 11

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 128
    :try_start_3
    new-instance v0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;Lcom/transsion/camera/manager/ThumbnailLoader-IA;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_15

    throw p1
.end method
