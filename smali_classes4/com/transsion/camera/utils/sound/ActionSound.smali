.class public Lcom/transsion/camera/utils/sound/ActionSound;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;,
        Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolAlarm:Landroid/media/SoundPool;

.field private mSounds:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$9dfiCWqQex5b03jXHWxkH_3BIvc(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/media/SoundPool;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->lambda$new$0(Landroid/media/SoundPool;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlayCallback(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handlePlayCallback(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlaySound(Lcom/transsion/camera/utils/sound/ActionSound;IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->handlePlaySound(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReleaseSound(Lcom/transsion/camera/utils/sound/ActionSound;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->handleReleaseSound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopSound(Lcom/transsion/camera/utils/sound/ActionSound;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleStopSound(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnloadSound(Lcom/transsion/camera/utils/sound/ActionSound;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleUnloadSound(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ActionSound"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    .line 137
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    .line 139
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ActionSound"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 141
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/os/Looper;Lcom/transsion/camera/utils/sound/ActionSound-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    .line 142
    sget-object p1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ActionSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSoundPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized dump()V
    .registers 5

    monitor-enter p0

    .line 342
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    const-string v1, "ActionSound mSoundPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_33

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :catchall_31
    move-exception v0

    goto :goto_4b

    .line 350
    :cond_33
    sget-object v1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionSound dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_31

    .line 351
    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_31

    throw v0
.end method

.method private declared-synchronized findSoundBySampleId(I)Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    .registers 3

    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private getSoundFromCache(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I
    .registers 7

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 492
    iget-object v3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 493
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/utils/sound/ActionSound;->isSameSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 494
    iget p0, v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    return v1
.end method

.method private handleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .registers 5

    .line 238
    iget v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    if-nez v0, :cond_14

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->initSoundPoolAlarm()V

    goto :goto_14

    .line 243
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_14

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->initSoundPool()V

    .line 247
    :cond_14
    :goto_14
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->getSoundFromCache(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I

    move-result v0

    if-lez v0, :cond_2e

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    iget-object v2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    iput-object v2, v1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 250
    iget-object p1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    if-eqz p1, :cond_2d

    .line 251
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;->onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    :cond_2d
    return-void

    .line 255
    :cond_2e
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->loadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I

    move-result v0

    .line 256
    iget-object v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    if-eqz v1, :cond_39

    .line 257
    invoke-interface {v1, p0, v0}, Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;->onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    :cond_39
    if-gtz v0, :cond_52

    .line 260
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load() error loading sound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private handlePlayCallback(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 3

    .line 313
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handlePlayCallback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_f

    .line 315
    const-string p1, "callback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 p0, 0x1

    .line 318
    invoke-interface {p1, p0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    return-void
.end method

.method private handlePlaySound(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private handleReleaseSound()V
    .registers 4

    .line 291
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionSound release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSoundPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSoundPoolAlarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_41

    .line 295
    iget-object v2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 296
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/sound/ActionSound;->unloadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 298
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->dump()V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_61

    .line 303
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 304
    iput-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 306
    :cond_61
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    if-eqz v0, :cond_6a

    .line 307
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 308
    iput-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    :cond_6a
    return-void
.end method

.method private handleStopSound(I)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    if-nez v0, :cond_21

    .line 284
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop fail, maybe sound is not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 286
    :cond_21
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->stopSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    return-void
.end method

.method private handleUnloadSound(I)V
    .registers 4

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    if-nez p0, :cond_20

    .line 272
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unload fail, maybe sound is not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private initSoundPool()V
    .registers 4

    .line 322
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    .line 324
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 325
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 326
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private initSoundPoolAlarm()V
    .registers 5

    .line 332
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    .line 334
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 335
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 336
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private isSameSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)Z
    .registers 4

    .line 501
    iget-object p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    if-eqz p0, :cond_e

    iget-object v0, p2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 504
    :cond_e
    iget-object p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    iget-object p1, p2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/media/SoundPool;II)V
    .registers 6

    .line 459
    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/sound/ActionSound;->findSoundBySampleId(I)Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    move-result-object p1

    .line 461
    const-string v0, "onLoadComplete: "

    if-nez p1, :cond_25

    .line 462
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but not found in mSounds, status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 p2, 0x0

    if-eqz p3, :cond_4d

    .line 467
    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 468
    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    .line 469
    iput-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 470
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " loading sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 473
    :cond_4d
    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_80

    const/4 p3, 0x2

    .line 474
    iput p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 475
    iget-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

    if-eqz p3, :cond_5c

    .line 476
    invoke-interface {p3}, Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;->onLoadComplete()V

    .line 478
    :cond_5c
    iget-boolean p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    if-eqz p3, :cond_a0

    .line 479
    iput-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 480
    iget-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->needLoop:Z

    iget-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    .line 481
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playSound when onLoadComplete sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a0

    .line 484
    :cond_80
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadComplete called in wrong state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    :cond_a0
    :goto_a0
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private loadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I
    .registers 13

    .line 355
    iget-object v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 356
    iget v3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    if-ne v3, v1, :cond_11

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    invoke-virtual {p0, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p0

    goto :goto_6c

    .line 359
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p0

    goto :goto_6c

    .line 361
    :cond_18
    iget-object v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_6b

    .line 362
    array-length v4, v0

    move v5, v3

    :goto_1f
    if-ge v5, v4, :cond_6b

    aget-object v6, v0, v5

    .line 364
    :try_start_23
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 365
    iget v8, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    if-ne v8, v1, :cond_3c

    .line 366
    iget-object v8, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    invoke-virtual {v8, v7, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    goto :goto_42

    :catch_3a
    move-exception v7

    goto :goto_46

    .line 368
    :cond_3c
    iget-object v8, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8, v7, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    .line 370
    :goto_42
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_45} :catch_3a

    goto :goto_68

    .line 372
    :goto_46
    sget-object v8, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open sound resource error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_6b
    move p0, v3

    :goto_6c
    if-lez p0, :cond_89

    .line 377
    iput v2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 378
    iput p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    .line 379
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_9f

    .line 381
    :cond_89
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSound error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_9f
    return p0
.end method

.method private playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 6

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 221
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 222
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 223
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 398
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playSound fail because sound is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_73

    .line 401
    invoke-interface {p3, v0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    return-void

    .line 405
    :cond_10
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_74

    .line 406
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ne v1, v2, :cond_32

    .line 407
    iget-object v4, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    iget v5, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    if-eqz p2, :cond_23

    move v9, v3

    goto :goto_24

    :cond_23
    move v9, v0

    :goto_24
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    goto :goto_4a

    :cond_32
    move v1, v0

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    move v2, v1

    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    if-eqz p2, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    move v5, v2

    :goto_3d
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    .line 411
    :goto_4a
    sget-object p2, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CapturePerformance] playSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_73

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ee

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 418
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_73
    return-void

    :cond_74
    const/4 p0, 0x1

    .line 426
    iput-boolean p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 427
    iput-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->needLoop:Z

    .line 428
    iput-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    .line 429
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "play() called in wrong state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .registers 6

    if-nez p1, :cond_a

    .line 435
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "stopSound fail because sound is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 439
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    .line 440
    sget-object v1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    if-eqz v1, :cond_3e

    .line 442
    iget v2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    invoke-virtual {p0, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_3c

    .line 445
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 447
    :goto_3c
    iput v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    :cond_3e
    return-void

    .line 450
    :cond_3f
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop() called in wrong state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for sound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private unloadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .registers 5

    .line 387
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPoolAlarm:Landroid/media/SoundPool;

    iget v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_2a

    .line 391
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->unload(I)Z

    :goto_2a
    const/4 p0, 0x0

    .line 393
    iput p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    return-void
.end method


# virtual methods
.method public load(IILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
    .registers 5

    .line 147
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 148
    iput-object p3, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 149
    iget-object p3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    .line 150
    iget-object p3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 151
    iput p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->usage:I

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
    .registers 4

    .line 157
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 158
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 159
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    .line 160
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V
    .registers 5

    .line 166
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 167
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 168
    iput-object p3, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
    .registers 4

    .line 176
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 177
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 178
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V
    .registers 5

    .line 184
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 185
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 186
    iput-object p3, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

    .line 187
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public play(I)V
    .registers 3

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->play(IZ)V

    return-void
.end method

.method public play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/utils/sound/ActionSound;->playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public play(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop(I)V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unload(I)V
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
