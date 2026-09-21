.class Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_log/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# instance fields
.field fileWriter:Ljava/io/FileWriter;

.field firstWrite:Z

.field private final folder:Ljava/lang/String;

.field private logFile:Ljava/io/File;

.field private final maxFileSize:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p2, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->maxFileSize:I

    .line 66
    invoke-direct {p0, p2}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->logFile:Ljava/io/File;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->firstWrite:Z

    return-void
.end method

.method private getLogFile(Ljava/lang/String;)Ljava/io/File;
    .registers 13

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriteHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is not exists, and mkdirs result is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LogUtil"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3d

    .line 109
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 114
    :cond_3d
    # invokes: Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->getLogFiles(Ljava/io/File;)[Ljava/io/File;
    invoke-static {v0}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->access$100(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_af

    .line 115
    array-length v3, p1

    const/16 v4, 0x14

    if-le v3, v4, :cond_af

    .line 116
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move v3, v2

    .line 118
    :goto_50
    array-length v4, p1

    if-ge v3, v4, :cond_af

    .line 119
    aget-object v4, p1, v3

    .line 120
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".log"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_ac

    .line 125
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 131
    :cond_af
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {p1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 132
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 137
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->getApplicationName()Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s_%s_%s.log"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_d9
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_fd

    add-int/2addr v1, v2

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->getApplicationName()Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->access$200()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_d9

    :cond_fd
    if-eqz v5, :cond_10c

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    iget p0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_10b

    goto :goto_10c

    :cond_10b
    return-object v5

    :cond_10c
    :goto_10c
    return-object v4
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 73
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->logFile:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1e

    .line 74
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->logFile:Ljava/io/File;

    .line 75
    iput-boolean v1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->firstWrite:Z

    .line 78
    :cond_1e
    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->logFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    .line 79
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->firstWrite:Z

    if-eqz v1, :cond_35

    .line 80
    # getter for: Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->LOG_HEADER:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->firstWrite:Z

    .line 84
    :cond_35
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 86
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_44} :catch_45

    return-void

    .line 88
    :catch_45
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    if-eqz p1, :cond_51

    .line 90
    :try_start_49
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 91
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    return-void
.end method
