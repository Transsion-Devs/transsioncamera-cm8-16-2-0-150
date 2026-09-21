.class public Lcom/ss/android/ttve/log/TELog2Client;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[VESDK]"

.field private static mLogger:Lcom/ss/android/vesdk/VELogProtocol;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/ss/android/ttve/log/TELog2ClientInvoker;->nativeInit()V

    return-void
.end method

.method public static logToLocal(ILjava/lang/String;)V
    .registers 5

    .line 38
    sget-object v0, Lcom/ss/android/ttve/log/TELog2Client;->mLogger:Lcom/ss/android/vesdk/VELogProtocol;

    if-eqz v0, :cond_18

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VESDK]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/ss/android/vesdk/VELogProtocol;->logToLocal(ILjava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/ss/android/ttve/log/TELog2Client;->mLogger:Lcom/ss/android/vesdk/VELogProtocol;

    return-void
.end method

.method public static setIsToLogcat(Z)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2ClientInvoker;->nativeSetIsToLogcat(Z)V

    return-void
.end method
