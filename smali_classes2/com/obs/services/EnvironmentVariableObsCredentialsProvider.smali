.class public Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/IObsCredentialsProvider;


# instance fields
.field private volatile securityKey:Lcom/obs/services/internal/security/BasicSecurityKey;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stringTrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSecurityKey()Lcom/obs/services/model/ISecurityKey;
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/BasicSecurityKey;

    if-nez v0, :cond_3f

    .line 34
    monitor-enter p0

    .line 35
    :try_start_5
    iget-object v0, p0, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/BasicSecurityKey;

    if-nez v0, :cond_3b

    .line 36
    const-string v0, "OBS_ACCESS_KEY_ID"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->stringTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "OBS_SECRET_ACCESS_KEY"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->stringTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "OBS_SECURITY_TOKEN"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->stringTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v3, "access key should not be null or empty."

    invoke-static {v0, v3}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "secret key should not be null or empty."

    invoke-static {v1, v3}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v3, Lcom/obs/services/internal/security/BasicSecurityKey;

    invoke-direct {v3, v0, v1, v2}, Lcom/obs/services/internal/security/BasicSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/BasicSecurityKey;

    goto :goto_3b

    :catchall_39
    move-exception v0

    goto :goto_3d

    .line 45
    :cond_3b
    :goto_3b
    monitor-exit p0

    goto :goto_3f

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_39

    throw v0

    .line 48
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;->securityKey:Lcom/obs/services/internal/security/BasicSecurityKey;

    return-object p0
.end method

.method public setSecurityKey(Lcom/obs/services/model/ISecurityKey;)V
    .registers 2

    .line 27
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "EnvironmentVariableObsCredentialsProvider class does not support this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
