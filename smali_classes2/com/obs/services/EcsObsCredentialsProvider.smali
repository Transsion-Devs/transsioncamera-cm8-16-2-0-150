.class public Lcom/obs/services/EcsObsCredentialsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/IObsCredentialsProvider;


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# instance fields
.field private getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maxRetryTimes:I

.field private volatile securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/obs/services/EcsObsCredentialsProvider;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/EcsObsCredentialsProvider;->ILOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->maxRetryTimes:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    iput p1, p0, Lcom/obs/services/EcsObsCredentialsProvider;->maxRetryTimes:I

    return-void
.end method

.method private getNewSecurityKey()Lcom/obs/services/internal/security/LimitedTimeSecurityKey;
    .registers 7

    .line 102
    invoke-static {}, Lcom/obs/services/internal/security/EcsSecurityUtils;->getSecurityKeyInfoWithDetail()Ljava/lang/String;

    move-result-object p0

    .line 103
    new-instance v0, Lcom/obs/services/internal/security/SecurityKey;

    invoke-direct {v0}, Lcom/obs/services/internal/security/SecurityKey;-><init>()V

    invoke-static {v0, p0}, Lcom/obs/services/internal/utils/JSONChange;->jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/security/SecurityKey;

    if-eqz v0, :cond_a7

    .line 110
    invoke-virtual {v0}, Lcom/obs/services/internal/security/SecurityKey;->getBean()Lcom/obs/services/internal/security/SecurityKeyBean;

    move-result-object p0

    .line 112
    :try_start_15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/obs/services/internal/security/SecurityKeyBean;->getExpiresDate()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_2f
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_2f} :catch_8b

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/obs/services/internal/security/SecurityKeyBean;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 122
    div-int/lit8 v5, v4, 0x3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "******"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v4, 0x2

    .line 124
    div-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget-object v2, Lcom/obs/services/EcsObsCredentialsProvider;->ILOG:Lcom/obs/log/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the AccessKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "will expiry at UTC time : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v1, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    invoke-virtual {p0}, Lcom/obs/services/internal/security/SecurityKeyBean;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/obs/services/internal/security/SecurityKeyBean;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/obs/services/internal/security/SecurityKeyBean;->getSecurityToken()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v1

    :catch_8b
    move-exception p0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date parse failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid securityKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private refresh(Z)V
    .registers 7

    const/4 v0, 0x0

    .line 85
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/obs/services/EcsObsCredentialsProvider;->getNewSecurityKey()Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    move-result-object v1

    iput-object v1, p0, Lcom/obs/services/EcsObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_43

    :catch_8
    move-exception v1

    .line 87
    sget-object v2, Lcom/obs/services/EcsObsCredentialsProvider;->ILOG:Lcom/obs/log/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh new security key failed. times : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; maxRetryTimes is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/obs/services/EcsObsCredentialsProvider;->maxRetryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; ignoreException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    iget v3, p0, Lcom/obs/services/EcsObsCredentialsProvider;->maxRetryTimes:I

    if-lt v0, v3, :cond_43

    .line 91
    const-string v3, "refresh new security key failed."

    invoke-interface {v2, v3, v1}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_3d

    goto :goto_43

    .line 93
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_43
    :goto_43
    add-int/lit8 v1, v0, 0x1

    .line 97
    iget v2, p0, Lcom/obs/services/EcsObsCredentialsProvider;->maxRetryTimes:I

    if-ge v0, v2, :cond_4e

    if-gtz v2, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v1

    goto :goto_1

    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public getSecurityKey()Lcom/obs/services/model/ISecurityKey;
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 58
    :try_start_a
    iget-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    invoke-virtual {v0}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->willSoonExpire()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_25

    .line 60
    :cond_17
    iget-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    invoke-virtual {v0}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->aboutToExpire()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 61
    invoke-direct {p0, v2}, Lcom/obs/services/EcsObsCredentialsProvider;->refresh(Z)V

    goto :goto_28

    :catchall_23
    move-exception v0

    goto :goto_2e

    .line 59
    :cond_25
    :goto_25
    invoke-direct {p0, v1}, Lcom/obs/services/EcsObsCredentialsProvider;->refresh(Z)V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_23

    .line 64
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_41

    :goto_2e
    iget-object p0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->getNewKeyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    throw v0

    .line 67
    :cond_34
    sget-object v0, Lcom/obs/services/EcsObsCredentialsProvider;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 68
    const-string v1, "some other thread is refreshing."

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 72
    :cond_41
    :goto_41
    iget-object p0, p0, Lcom/obs/services/EcsObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/LimitedTimeSecurityKey;

    return-object p0
.end method

.method public setSecurityKey(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    .line 51
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "EcsObsCredentialsProvider class does not support this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
