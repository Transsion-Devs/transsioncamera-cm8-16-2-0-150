.class public Lcom/obs/services/OBSCredentialsProviderChain;
.super Lcom/obs/services/DefaultCredentialsProviderChain;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lcom/obs/services/OBSCredentialsProviderChain;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 6

    .line 24
    new-instance v0, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;

    invoke-direct {v0}, Lcom/obs/services/EnvironmentVariableObsCredentialsProvider;-><init>()V

    new-instance v1, Lcom/obs/services/EcsObsCredentialsProvider;

    invoke-direct {v1}, Lcom/obs/services/EcsObsCredentialsProvider;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/obs/services/IObsCredentialsProvider;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/obs/services/DefaultCredentialsProviderChain;-><init>(Z[Lcom/obs/services/IObsCredentialsProvider;)V

    return-void
.end method
