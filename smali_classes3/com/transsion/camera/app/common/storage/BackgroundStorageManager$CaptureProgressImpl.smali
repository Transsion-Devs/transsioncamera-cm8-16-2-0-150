.class public Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureProgressImpl"
.end annotation


# instance fields
.field private final mCaptureCache:Ljava/util/Stack;

.field private final mContext:Ljava/lang/ref/WeakReference;

.field private final mCusDeferCaptureCache:Ljava/util/List;

.field private final mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$Gv_JcHjpvrmEhii4omtrG2qk6Us(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$mgetThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cBiaqJ6Nl18EMkMePd99tS0mmvM(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 2

    .line 1922
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onThumbnailClicked()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 4

    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    .line 1887
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    .line 1888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    .line 1890
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1893
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method clearCache()V
    .registers 4

    .line 1948
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1950
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "clearCache: shot2shot don\'t finish."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_23

    .line 1953
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1954
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1a

    throw p0
.end method

.method isShot2ShotFinished()Z
    .registers 6

    .line 1968
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1969
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 1970
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShot2ShotFinished: finished = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1971
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    goto :goto_44

    :catchall_41
    move-exception p0

    goto :goto_46

    :cond_43
    const/4 p0, 0x0

    :goto_44
    monitor-exit v0

    return p0

    .line 1972
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_41

    throw p0
.end method

.method public onCaptureFailed(J)V
    .registers 6

    .line 1939
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureProgressImpl] onCaptureFailed: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1941
    :try_start_1b
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1942
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1943
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_35

    .line 1944
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_35
    move-exception p0

    .line 1943
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 8

    .line 1908
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureProgressImpl] onCaptureProgressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1910
    :try_start_1b
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1911
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide v1

    .line 1912
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1913
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CaptureProgressImpl][mCaptureCache] onCaptureProgressed: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_56

    :catchall_53
    move-exception p0

    goto/16 :goto_d5

    .line 1916
    :cond_56
    :goto_56
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_8c

    .line 1917
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 1918
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    .line 1919
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 1920
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 1921
    invoke-virtual {v2, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    .line 1922
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_ce

    .line 1925
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ce

    .line 1926
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 1927
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1928
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1929
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CaptureProgressImpl] onCaptureProgressed: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1933
    :cond_ce
    :goto_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_1b .. :try_end_cf} :catchall_53

    .line 1934
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 1933
    :goto_d5
    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_53

    throw p0
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 6

    .line 1898
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CaptureProgressImpl] onCaptureStarted: timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1899
    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1900
    :try_start_1b
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCaptureCache:Ljava/util/Stack;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1902
    monitor-exit p3
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_35

    .line 1903
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_35
    move-exception p0

    .line 1902
    :try_start_36
    monitor-exit p3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method removeCacheAndGetResult(J)Z
    .registers 8

    .line 1958
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1959
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1960
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 1961
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CaptureProgressImpl] removeCacheAndGetResult: timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mCusDeferCaptureCache:Ljava/util/List;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1963
    monitor-exit v0

    return v1

    :catchall_36
    move-exception p0

    .line 1964
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method resetShot2ShotFinished()V
    .registers 3

    .line 1976
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CaptureProgressImpl] resetShot2ShotFinished: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1977
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->mIsShot2ShotFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
