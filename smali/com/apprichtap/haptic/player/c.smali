.class public Lcom/apprichtap/haptic/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/LinkedHashMap;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/apprichtap/haptic/player/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/apprichtap/haptic/player/c;->d:Landroid/content/Context;

    iput p2, p0, Lcom/apprichtap/haptic/player/c;->e:I

    return-void
.end method

.method private declared-synchronized c()I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/apprichtap/haptic/player/c;->f()V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/apprichtap/haptic/player/c;->d:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/apprichtap/haptic/RichTapPlayer;->create(Landroid/content/Context;I)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_25

    :cond_23
    :goto_23
    monitor-exit p0

    return v0

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerObjectPool shrink() mPlayers.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MAX_SIZE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlayerObjectPool"

    invoke-static {v2, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-gt v1, v0, :cond_1bc

    invoke-static {}, Lcom/apprichtap/haptic/base/d;->b()Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, ""

    iget-object v1, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :catchall_65
    move-exception v0

    goto/16 :goto_1be

    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerObjectPool mPlayers keys before shrink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerObjectPool"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v3}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_af
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b5
    if-ge v3, v1, :cond_ef

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PlayerObjectPool will remove :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as not playing!"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PlayerObjectPool"

    invoke-static {v6, v5}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v5}, Lcom/apprichtap/haptic/RichTapPlayer;->release()V

    iget-object v5, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    :cond_ef
    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-gtz v0, :cond_102

    const-string v0, "PlayerObjectPool"

    const-string v1, "PlayerObjectPool, no need to shrink the playing ones!"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_1 .. :try_end_100} :catchall_65

    monitor-exit p0

    return-void

    :cond_102
    :try_start_102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_111
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v5}, Lcom/apprichtap/haptic/RichTapPlayer;->stop()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v5}, Lcom/apprichtap/haptic/RichTapPlayer;->release()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_111

    :cond_13c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_140
    if-ge v2, v0, :cond_16f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlayerObjectPool will remove :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as oversize!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PlayerObjectPool"

    invoke-static {v5, v4}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_140

    :cond_16f
    invoke-static {}, Lcom/apprichtap/haptic/base/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string v0, ""

    iget-object v1, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_181
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_181

    :cond_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerObjectPool mPlayers current keys after shrink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerObjectPool"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bc
    .catchall {:try_start_102 .. :try_end_1bc} :catchall_65

    :cond_1bc
    monitor-exit p0

    return-void

    :goto_1be
    :try_start_1be
    monitor-exit p0
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_65

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)I
    .registers 19

    .line 0
    monitor-enter p0

    const/4 v1, -0x1

    :try_start_2
    iget v0, p0, Lcom/apprichtap/haptic/player/c;->e:I

    const/16 v2, 0x20

    if-le v2, v0, :cond_f

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/c;->g()V

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object p1, v0

    goto :goto_47

    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/apprichtap/haptic/player/c;->c()I

    move-result v0

    iget-object v2, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/apprichtap/haptic/RichTapPlayer;

    if-nez v3, :cond_2b

    const-string p1, "PlayerObjectPool"

    const-string p2, "PlayerObjectPool, playHaptic, null == player"

    invoke-static {p1, p2}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_c

    monitor-exit p0

    return v1

    :cond_2b
    move-object/from16 v2, p8

    :try_start_2d
    invoke-virtual {v3, v2}, Lcom/apprichtap/haptic/RichTapPlayer;->setVibrationAttributes(Landroid/os/VibrationAttributes;)V

    move-object v4, p1

    move v7, p2

    move v8, p3

    move v5, p4

    move v6, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/apprichtap/haptic/RichTapPlayer;->setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V

    move/from16 p1, p6

    invoke-virtual {v3, p1}, Lcom/apprichtap/haptic/RichTapPlayer;->setStartOffsetMillis(I)V

    invoke-virtual {v3}, Lcom/apprichtap/haptic/RichTapPlayer;->prepare()V

    invoke-virtual {v3}, Lcom/apprichtap/haptic/RichTapPlayer;->start()V
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_c

    monitor-exit p0

    return v0

    :goto_47
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return v1

    :catchall_4c
    move-exception v0

    move-object p1, v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4c

    throw p1
.end method

.method public declared-synchronized a()V
    .registers 4

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v2}, Lcom/apprichtap/haptic/RichTapPlayer;->stop()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v1}, Lcom/apprichtap/haptic/RichTapPlayer;->release()V

    goto :goto_b

    :catchall_2a
    move-exception v0

    goto :goto_33

    :cond_2c
    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2a

    monitor-exit p0

    return-void

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2a

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/apprichtap/haptic/player/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-virtual {v1}, Lcom/apprichtap/haptic/RichTapPlayer;->stop()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_b

    :catchall_28
    move-exception v0

    goto :goto_2c

    :cond_2a
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    throw v0
.end method
