.class public Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_log/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    }
.end annotation


# instance fields
.field private enable:Z

.field private final logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

.field private final printLevel:I

.field private final showThreadInfo:Z

.field private tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->enable:Z

    .line 13
    iget-boolean v0, p1, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->showThreadInfo:Z

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->showThreadInfo:Z

    .line 14
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    .line 15
    iget-object v0, p1, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->tag:Ljava/lang/String;

    .line 16
    iget v0, p1, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->printLevel:I

    iput v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->printLevel:I

    .line 17
    iget-boolean p1, p1, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->enable:Z

    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->enable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$1;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;-><init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 102
    invoke-static {p1}, Lcom/ss/android/ugc/cut_log/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;)I
    .registers 5

    const/4 p0, 0x5

    .line 89
    :goto_1
    array-length v0, p1

    const/4 v1, -0x1

    if-ge p0, v0, :cond_1c

    .line 90
    aget-object v0, p1, p0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-class v2, Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    add-int/2addr p0, v1

    return p0

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1c
    return v1
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logStrategy:Lcom/ss/android/ugc/cut_log/LogStrategy;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_log/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 73
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 75
    array-length v0, p3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_27

    .line 78
    aget-object v2, p3, v1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2502 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_27
    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-boolean p2, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->showThreadInfo:Z

    if-eqz p2, :cond_2a

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 66
    invoke-direct {p0, p2}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    .line 68
    aget-object v0, p2, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, p0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public static newBuilder()Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;
    .registers 2

    .line 21
    new-instance v0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;-><init>(Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public enable()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->enable:Z

    return p0
.end method

.method public getPrintLevel()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->printLevel:I

    return p0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 25
    invoke-direct {p0, p2}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logHeaderContent(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    :try_start_8
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 30
    array-length v2, v1
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_5d

    .line 31
    const-string v3, " - "

    const/16 v4, 0xfa0

    if-gt v2, v4, :cond_2b

    .line 32
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    const/4 p3, 0x0

    :goto_2c
    if-ge p3, v2, :cond_5c

    sub-int v5, v2, p3

    .line 37
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez p3, :cond_51

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, p3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 41
    :cond_51
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, p3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, p2, v6}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_59} :catch_5d

    :goto_59
    add-int/lit16 p3, p3, 0xfa0

    goto :goto_2c

    :cond_5c
    return-void

    :catch_5d
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
