.class public Lcom/obs/services/internal/io/InterruptableInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/internal/io/InputStreamWrapper;


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private interrupted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/obs/services/internal/io/InterruptableInputStream;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/io/InterruptableInputStream;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->interrupted:Z

    .line 31
    iput-object p1, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private doInterrupted()V
    .registers 3

    .line 35
    iget-boolean v0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->interrupted:Z

    if-nez v0, :cond_5

    return-void

    .line 37
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/obs/services/internal/io/InterruptableInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    .line 39
    sget-object v0, Lcom/obs/services/internal/io/InterruptableInputStream;->log:Lcom/obs/log/ILogger;

    const-string v1, "io close failed."

    invoke-interface {v0, v1, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    :goto_11
    new-instance p0, Lcom/obs/services/internal/io/UnrecoverableIOException;

    const-string v0, "Reading from input stream deliberately interrupted"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/obs/services/internal/io/InterruptableInputStream;->doInterrupted()V

    .line 60
    iget-object p0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public interrupt()V
    .registers 2

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->interrupted:Z

    return-void
.end method

.method public read()I
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/obs/services/internal/io/InterruptableInputStream;->doInterrupted()V

    .line 48
    iget-object p0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/obs/services/internal/io/InterruptableInputStream;->doInterrupted()V

    .line 54
    iget-object p0, p0, Lcom/obs/services/internal/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method
