.class public final Lcom/obs/services/model/ServerAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AES256:Lcom/obs/services/model/ServerAlgorithm;


# instance fields
.field private serverAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/obs/services/model/ServerAlgorithm;

    const-string v1, "AES256"

    invoke-direct {v0, v1}, Lcom/obs/services/model/ServerAlgorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/ServerAlgorithm;->AES256:Lcom/obs/services/model/ServerAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/obs/services/model/ServerAlgorithm;->serverAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public static parseServerAlgorithm(Ljava/lang/String;)Lcom/obs/services/model/ServerAlgorithm;
    .registers 3

    if-eqz p0, :cond_f

    .line 39
    sget-object v0, Lcom/obs/services/model/ServerAlgorithm;->AES256:Lcom/obs/services/model/ServerAlgorithm;

    invoke-virtual {v0}, Lcom/obs/services/model/ServerAlgorithm;->toString()Ljava/lang/String;

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

    .line 51
    instance-of v0, p1, Lcom/obs/services/model/ServerAlgorithm;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/obs/services/model/ServerAlgorithm;->toString()Ljava/lang/String;

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

.method public getServerAlgorithm()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/services/model/ServerAlgorithm;->serverAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/ServerAlgorithm;->serverAlgorithm:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/obs/services/model/ServerAlgorithm;->serverAlgorithm:Ljava/lang/String;

    return-object p0
.end method
