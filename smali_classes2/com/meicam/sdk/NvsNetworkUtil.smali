.class public Lcom/meicam/sdk/NvsNetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNetWorkStates(Landroid/content/Context;)I
    .registers 3

    .line 35
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 36
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_23

    .line 37
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_23

    .line 41
    :cond_16
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_21

    const/4 v1, 0x1

    if-eq p0, v1, :cond_20

    return v0

    :cond_20
    return v1

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    return v0
.end method
