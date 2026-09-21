.class public final Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_BYTES:I = 0x7d000


# instance fields
.field date:Ljava/util/Date;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field diskPath:Ljava/lang/String;

.field enable:Z

.field folder:Ljava/lang/String;

.field handlerThread:Landroid/os/HandlerThread;

.field logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

.field printLevel:I

.field showThreadInfo:Z

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$1;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    if-nez v0, :cond_b

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    .line 138
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1a

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss:SSS"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 142
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->diskPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->diskPath:Ljava/lang/String;

    .line 146
    :cond_2c
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    if-nez v0, :cond_80

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->diskPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Logs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidFileLogger."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->handlerThread:Landroid/os/HandlerThread;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 150
    new-instance v1, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;

    iget-object v2, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v3, 0x7d000

    invoke-direct {v1, v2, v0, v3}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy$WriteHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;I)V

    .line 151
    new-instance v0, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_log/DiskLogStrategy;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    .line 154
    :cond_80
    iget v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->printLevel:I

    if-nez v0, :cond_87

    const/4 v0, 0x3

    .line 155
    iput v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->printLevel:I

    .line 158
    :cond_87
    new-instance v0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;-><init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$1;)V

    return-object v0
.end method

.method public diskPath(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->diskPath:Ljava/lang/String;

    return-object p0
.end method

.method public enable(Z)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->enable:Z

    return-object p0
.end method

.method public folder(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->folder:Ljava/lang/String;

    return-object p0
.end method

.method public logStrategy(Lcom/ss/android/ugc/cut_log/LogStrategy;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    return-object p0
.end method

.method public outputLevel(I)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 124
    iput p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->printLevel:I

    return-object p0
.end method

.method public showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->showThreadInfo:Z

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
