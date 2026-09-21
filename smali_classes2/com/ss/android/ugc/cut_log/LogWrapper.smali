.class public final Lcom/ss/android/ugc/cut_log/LogWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_log/LogIF;


# instance fields
.field private diskFormatStrategy:Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

.field private hasInitialized:Z

.field private final printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

.field private simpleFormatStrategy:Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/ss/android/ugc/cut_log/LogConfig;)V
    .registers 5

    const-string v0, "logConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->hasInitialized:Z

    if-nez v0, :cond_94

    .line 12
    invoke-static {}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->newBuilder()Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->diskPath(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 14
    const-string v1, "CutSame"

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getToLocal()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->enable(Z)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getShowThreadInfo()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getLocalLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->getLever()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->outputLevel(I)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->folder(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy$Builder;->build()Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->diskFormatStrategy:Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

    .line 20
    invoke-static {}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;->newBuilder()Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getShowThreadInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getLogcatLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->getLever()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->printLevel(I)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig;->getToLogcat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->enable(Ljava/lang/Boolean;)Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy$Builder;->build()Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->simpleFormatStrategy:Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;

    .line 26
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->clearLogAdapters()V

    .line 27
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    new-instance v0, Lcom/ss/android/ugc/cut_log/DiskLogAdapter;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->diskFormatStrategy:Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_log/DiskLogAdapter;-><init>(Lcom/ss/android/ugc/cut_log/FormatStrategy;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->addAdapter(Lcom/ss/android/ugc/cut_log/LogAdapter;)V

    .line 28
    iget-object p1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    new-instance v0, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->simpleFormatStrategy:Lcom/ss/android/ugc/cut_log/SimpleFormatStrategy;

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_log/AndroidLogAdapter;-><init>(Lcom/ss/android/ugc/cut_log/FormatStrategy;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->addAdapter(Lcom/ss/android/ugc/cut_log/LogAdapter;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->hasInitialized:Z

    :cond_94
    return-void
.end method

.method public final release()V
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->hasInitialized:Z

    if-eqz v0, :cond_c

    .line 35
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->diskFormatStrategy:Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;

    if-nez p0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_log/CsvFormatStrategy;->release()V

    :cond_c
    :goto_c
    return-void
.end method

.method public setLogEnable(Z)V
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->setLogEnable(Z)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->v(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;->printer:Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->w(Ljava/lang/String;)V

    return-void
.end method
