.class public Lcom/bef/byteeffect/text/FontCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x20

.field private static fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static lruQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 5

    const-class v0, Lcom/bef/byteeffect/text/FontCache;

    monitor-enter v0

    .line 16
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_4a

    if-nez v2, :cond_5a

    .line 20
    :try_start_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_57
    .catchall {:try_start_26 .. :try_end_2f} :catchall_4a

    .line 25
    :try_start_2f
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_4c

    .line 26
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4c

    :catchall_4a
    move-exception p0

    goto :goto_66

    .line 30
    :cond_4c
    :goto_4c
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_4a

    goto :goto_64

    .line 23
    :catch_57
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_5a
    :try_start_5a
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 34
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_4a

    .line 36
    :goto_64
    monitor-exit v0

    return-object v2

    :goto_66
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_4a

    throw p0
.end method

.method public static declared-synchronized getFromSystem(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 5

    const-class v0, Lcom/bef/byteeffect/text/FontCache;

    monitor-enter v0

    .line 40
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_45

    if-nez v2, :cond_55

    .line 44
    :try_start_26
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_52
    .catchall {:try_start_26 .. :try_end_2a} :catchall_45

    .line 49
    :try_start_2a
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_47

    .line 50
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_61

    .line 54
    :cond_47
    :goto_47
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_45

    goto :goto_5f

    .line 47
    :catch_52
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_55
    :try_start_55
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 58
    sget-object p0, Lcom/bef/byteeffect/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_45

    .line 60
    :goto_5f
    monitor-exit v0

    return-object v2

    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_45

    throw p0
.end method
