.class public Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBoundsInWindow:Landroid/graphics/Rect;

.field public mConnection:Landroid/view/IScrollCaptureConnection;

.field public mDescription:Ljava/lang/String;

.field public mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageName:Ljava/lang/String;

.field public mWindowBounds:Landroid/graphics/Rect;

.field public mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mDescription:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    .line 33
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowBounds:Landroid/graphics/Rect;

    .line 36
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 39
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mPackageName:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mMessages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v0, :cond_a

    .line 114
    :try_start_4
    invoke-interface {v0}, Landroid/view/IScrollCaptureConnection;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    :cond_a
    return-void
.end method

.method public getBoundsInWindow()Landroid/graphics/Rect;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getConnection()Ljava/lang/Object;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    return-object p0
.end method

.method public getConnectionAsBinder()Landroid/os/IBinder;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_9

    .line 128
    invoke-interface {p0}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionIsNull()Z
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowBounds()Landroid/graphics/Rect;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getWindowTitle()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
