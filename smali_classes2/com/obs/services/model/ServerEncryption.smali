.class public final Lcom/obs/services/model/ServerEncryption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OBS_KMS:Lcom/obs/services/model/ServerEncryption;


# instance fields
.field private serverEncryption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/obs/services/model/ServerEncryption;

    const-string v1, "kms"

    invoke-direct {v0, v1}, Lcom/obs/services/model/ServerEncryption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/ServerEncryption;->OBS_KMS:Lcom/obs/services/model/ServerEncryption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/obs/services/model/ServerEncryption;->serverEncryption:Ljava/lang/String;

    return-void
.end method

.method public static parseServerEncryption(Ljava/lang/String;)Lcom/obs/services/model/ServerEncryption;
    .registers 3

    if-eqz p0, :cond_f

    .line 40
    sget-object v0, Lcom/obs/services/model/ServerEncryption;->OBS_KMS:Lcom/obs/services/model/ServerEncryption;

    invoke-virtual {v0}, Lcom/obs/services/model/ServerEncryption;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-object v0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 52
    instance-of v0, p1, Lcom/obs/services/model/ServerEncryption;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/obs/services/model/ServerEncryption;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getServerEncryption()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/obs/services/model/ServerEncryption;->serverEncryption:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/ServerEncryption;->serverEncryption:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/obs/services/model/ServerEncryption;->serverEncryption:Ljava/lang/String;

    return-object p0
.end method
