.class public Lcom/obs/services/DefaultCredentialsProviderChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/IObsCredentialsProvider;


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# instance fields
.field private final credentialsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/IObsCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private lastProvider:Lcom/obs/services/IObsCredentialsProvider;

.field private reused:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/obs/services/DefaultCredentialsProviderChain;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/DefaultCredentialsProviderChain;->ILOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/obs/services/IObsCredentialsProvider;)V
    .registers 3

    .line 46
    invoke-direct {p0, p2}, Lcom/obs/services/DefaultCredentialsProviderChain;-><init>([Lcom/obs/services/IObsCredentialsProvider;)V

    .line 47
    iput-boolean p1, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->reused:Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/obs/services/IObsCredentialsProvider;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->lastProvider:Lcom/obs/services/IObsCredentialsProvider;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->reused:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    if-eqz p1, :cond_25

    .line 36
    array-length v0, p1

    if-eqz v0, :cond_25

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    .line 41
    iget-object v3, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_24
    return-void

    .line 37
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No credential providers specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSecurityKey()Lcom/obs/services/model/ISecurityKey;
    .registers 7

    .line 57
    const-string v0, "Loading credentials from "

    iget-boolean v1, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->reused:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->lastProvider:Lcom/obs/services/IObsCredentialsProvider;

    if-eqz v1, :cond_f

    .line 58
    invoke-interface {v1}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object p0

    return-object p0

    .line 61
    :cond_f
    iget-object v1, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/IObsCredentialsProvider;

    .line 63
    :try_start_21
    invoke-interface {v2}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object v3

    .line 65
    invoke-interface {v3}, Lcom/obs/services/model/ISecurityKey;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Lcom/obs/services/model/ISecurityKey;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 66
    sget-object v3, Lcom/obs/services/DefaultCredentialsProviderChain;->ILOG:Lcom/obs/log/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 68
    iput-object v2, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->lastProvider:Lcom/obs/services/IObsCredentialsProvider;

    .line 69
    invoke-interface {v2}, Lcom/obs/services/IObsCredentialsProvider;->getSecurityKey()Lcom/obs/services/model/ISecurityKey;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception v3

    .line 72
    sget-object v4, Lcom/obs/services/DefaultCredentialsProviderChain;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v4}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 78
    :cond_70
    sget-object v0, Lcom/obs/services/DefaultCredentialsProviderChain;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v1

    const-string v2, "No credential providers specified"

    if-eqz v1, :cond_7d

    .line 79
    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    :cond_7d
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->lastProvider:Lcom/obs/services/IObsCredentialsProvider;

    .line 83
    new-instance p0, Lcom/obs/services/exception/ObsException;

    invoke-direct {p0, v2}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public refresh()V
    .registers 2

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/obs/services/DefaultCredentialsProviderChain;->lastProvider:Lcom/obs/services/IObsCredentialsProvider;

    return-void
.end method

.method public setSecurityKey(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    .line 52
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "OBSCredentialsProviderChain class does not support this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
