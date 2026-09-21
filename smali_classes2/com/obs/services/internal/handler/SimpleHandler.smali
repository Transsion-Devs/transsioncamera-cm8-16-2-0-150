.class public abstract Lcom/obs/services/internal/handler/SimpleHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# static fields
.field private static final LOG:Lcom/obs/log/ILogger;


# instance fields
.field private handlerStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/obs/services/internal/handler/SimpleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private textBuffer:Ljava/lang/StringBuilder;

.field protected xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/obs/services/internal/handler/SimpleHandler;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/handler/SimpleHandler;->LOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    .line 37
    iput-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->textBuffer:Ljava/lang/StringBuilder;

    .line 39
    iget-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {p1, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private invokeMethodWithoutException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 93
    const-string v0, "\' in "

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/SimpleHandler;

    if-nez v1, :cond_31

    .line 96
    sget-object p1, Lcom/obs/services/internal/handler/SimpleHandler;->LOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_a8

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "non-existent SimpleHandler in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    return-void

    :cond_31
    const/4 v2, 0x0

    .line 102
    new-array v3, v2, [Ljava/lang/Class;

    .line 103
    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_46

    const/4 v3, 0x1

    .line 106
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .line 111
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 112
    invoke-virtual {p2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_51} :catch_7e
    .catchall {:try_start_46 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception p2

    .line 119
    sget-object v1, Lcom/obs/services/internal/handler/SimpleHandler;->LOG:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke SimpleHandler subclass\'s method for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-interface {v1, p0, p2}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 114
    :catch_7e
    sget-object p2, Lcom/obs/services/internal/handler/SimpleHandler;->LOG:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-existent SimpleHandler subclass\'s method for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-interface {p2, p0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method private setReaderHandler(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 88
    iget-object p0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public controlReturned(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 2

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 79
    iget-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/obs/services/internal/handler/SimpleHandler;->invokeMethodWithoutException(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->textBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method public hasParentHandler()Z
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public returnControlToParentHandler()V
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/SimpleHandler;->hasParentHandler()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 50
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/SimpleHandler;

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/handler/SimpleHandler;->controlReturned(Lcom/obs/services/internal/handler/SimpleHandler;)V

    .line 52
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/SimpleHandler;

    invoke-direct {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->setReaderHandler(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void

    .line 54
    :cond_22
    sget-object v0, Lcom/obs/services/internal/handler/SimpleHandler;->LOG:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this class has no parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    :cond_46
    return-void
.end method

.method public setHandlerStack(Ljava/util/Deque;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/obs/services/internal/handler/SimpleHandler;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/handler/SimpleHandler;->invokeMethodWithoutException(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->setHandlerStack(Ljava/util/Deque;)V

    .line 44
    iget-object v0, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->handlerStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/SimpleHandler;

    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;->setReaderHandler(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method
