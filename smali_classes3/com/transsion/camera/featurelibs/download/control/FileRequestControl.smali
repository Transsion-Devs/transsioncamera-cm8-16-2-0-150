.class public Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/download/control/IRequestControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRequestCommandMap:Ljava/util/Map;

.field private final mRequestExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$HZiXF23h2gSA0P5qGcUdp-amSCQ(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->lambda$cancel$1(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNvkU97HISGfr8jGk85iPGW1AmI(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->lambda$cancelAll$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$njlSn1A83lDBWLnmQ4iTe3ShXDA(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->lambda$request$0(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCommandMap(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestExecutor(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smstreamToByte(Ljava/io/File;)[B
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->streamToByte(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FileRequest"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;

    const-string v1, "Request"

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;

    const-string v1, "Work"

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mWorkExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private cancelCommand(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->stop()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$cancel$1(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;

    .line 57
    sget-object v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel:\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->cancelCommand(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$cancelAll$2()V
    .registers 7

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/featurelibs/download/Request;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;

    .line 69
    sget-object v3, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAll:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->cancelCommand(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;)V

    goto :goto_a

    .line 72
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private synthetic lambda$request$0(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 31
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;-><init>(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->requestCommand(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;)V

    return-void
.end method

.method private requestCommand(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;)V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestCommandMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mWorkExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static streamToByte(Ljava/io/File;)[B
    .registers 5

    .line 101
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_3b

    .line 102
    :try_start_5
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_27

    const/16 v1, 0x400

    .line 103
    :try_start_c
    new-array v1, v1, [B

    .line 105
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :catchall_1a
    move-exception v1

    goto :goto_29

    .line 108
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1a

    .line 109
    :try_start_20
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_3b

    return-object v1

    :catchall_27
    move-exception p0

    goto :goto_32

    .line 101
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p0

    :try_start_2e
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_27

    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v0

    :try_start_37
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public request(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
