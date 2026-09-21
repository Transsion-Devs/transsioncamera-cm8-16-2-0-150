.class public Lcom/ss/android/medialib/qr/EnigmaScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/qr/EnigmaScanner$ScanMode;,
        Lcom/ss/android/medialib/qr/EnigmaScanner$ErrorType;,
        Lcom/ss/android/medialib/qr/EnigmaScanner$OnEnigmaScanListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/ss/android/medialib/qr/EnigmaScanner$OnEnigmaScanListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized onResult()V
    .registers 1

    monitor-enter p0

    .line 118
    monitor-exit p0

    return-void
.end method

.method private setScanMode()V
    .registers 1

    return-void
.end method


# virtual methods
.method public enableCameraScan(Z)V
    .registers 2

    return-void
.end method

.method public enableCameraScanWithRequirement(ZJ)V
    .registers 4

    return-void
.end method

.method public getScanMode()Lcom/ss/android/medialib/qr/EnigmaScanner$ScanMode;
    .registers 1

    .line 114
    sget-object p0, Lcom/ss/android/medialib/qr/EnigmaScanner$ScanMode;->CAMERA:Lcom/ss/android/medialib/qr/EnigmaScanner$ScanMode;

    return-object p0
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public release()V
    .registers 1

    .line 106
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public setListener(Lcom/ss/android/medialib/qr/EnigmaScanner$OnEnigmaScanListener;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/ss/android/medialib/qr/EnigmaScanner;->listener:Lcom/ss/android/medialib/qr/EnigmaScanner$OnEnigmaScanListener;

    return-void
.end method

.method public startScan(Landroid/content/Context;Ljava/lang/Object;Landroid/view/SurfaceHolder;Lcom/ss/android/medialib/qr/ScanSettings;)V
    .registers 5

    .line 0
    return-void
.end method

.method public startScan(Ljava/lang/String;Lcom/ss/android/medialib/qr/ScanSettings;J)V
    .registers 5

    .line 0
    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

.method public declared-synchronized stopCameraScan()V
    .registers 1

    monitor-enter p0

    .line 97
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopPicScan()V
    .registers 1

    monitor-enter p0

    .line 90
    monitor-exit p0

    return-void
.end method
