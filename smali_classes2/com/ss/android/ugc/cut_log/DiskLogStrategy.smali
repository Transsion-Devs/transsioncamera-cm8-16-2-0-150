.class public Lcom/ss/android/ugc/cut_log/DiskLogStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_log/LogStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;
    }
.end annotation


# static fields
.field private static final HEADER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LOG_HEADER:Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->HEADER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n==============================Log Info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "==============================\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->LOG_HEADER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->LOG_HEADER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;)[Ljava/io/File;
    .registers 1

    .line 19
    invoke-static {p0}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->getLogFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 19
    invoke-static {}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "cutsamDemo"

    .line 34
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 35
    array-length v1, v0

    if-eqz v1, :cond_13

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_13
    const-string v0, "Unknown"

    return-object v0
.end method

.method private static getLogFiles(Ljava/io/File;)[Ljava/io/File;
    .registers 2

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_8
    new-instance v0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$1;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 29
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
