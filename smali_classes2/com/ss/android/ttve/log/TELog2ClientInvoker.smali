.class public Lcom/ss/android/ttve/log/TELog2ClientInvoker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 22
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadBase()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeSetIsToLogcat(Z)V
.end method

.method public static onNativeCallback_checkJni([B)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    .line 37
    aput-byte v1, p0, v0

    return v1

    .line 40
    :cond_7
    const-string p0, "TELog2ClientInvoker"

    const-string v1, "onCheckJni data is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 41
    invoke-static {p0, v1}, Lcom/ss/android/ttve/log/TELog2Client;->logToLocal(ILjava/lang/String;)V

    return v0
.end method

.method public static onNativeCallback_logToLocal(ILjava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/ss/android/ttve/log/TELog2Client;->logToLocal(ILjava/lang/String;)V

    return-void
.end method
