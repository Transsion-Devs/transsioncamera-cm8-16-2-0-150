.class public Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_log/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String;


# instance fields
.field private final date:Ljava/util/Date;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private enable:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

.field private final printLevel:I

.field private final showThreadInfo:Z

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->enable:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->handlerThread:Landroid/os/HandlerThread;

    .line 26
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->date:Ljava/util/Date;

    .line 27
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 28
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    .line 29
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->tag:Ljava/lang/String;

    .line 30
    iget-boolean v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->showThreadInfo:Z

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->showThreadInfo:Z

    .line 31
    iget v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->printLevel:I

    iput v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->printLevel:I

    .line 32
    iget-boolean v0, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->enable:Z

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->enable:Z

    .line 33
    iget-object p1, p1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->handlerThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;-><init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 78
    invoke-static {p1}, Lcom/ss/android/ugc/cut_log/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static newBuilder()Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;
    .registers 2

    .line 37
    new-instance v0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;-><init>(Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public changeBaseTag(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->tag:Ljava/lang/String;

    return-void
.end method

.method public enable()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->enable:Z

    return p0
.end method

.method public getPrintLevel()I
    .registers 1

    .line 65
    iget p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->printLevel:I

    return p0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 41
    invoke-direct {p0, p2}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p1}, Lcom/ss/android/ugc/cut_log/Utils;->logLevel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v2, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->showThreadInfo:Z

    if-eqz v2, :cond_3e

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_3e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget-object v1, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 56
    const-string v2, " <br> "

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 59
    :cond_54
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_log/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_7

    .line 164
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_7
    return-void
.end method
