.class Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 89
    const-string p0, "com.transsion.hubsdk.api.view.ITranTouchEventHandler"

    return-object p0
.end method

.method public handleInputEvent(Landroid/view/InputEvent;)V
    .registers 6

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.view.ITranTouchEventHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-interface {p1, v0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_3d

    .line 102
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_1d
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_39

    .line 105
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 106
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;->handleInputEvent(Landroid/view/InputEvent;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_18

    .line 112
    :goto_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 109
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_18

    goto :goto_32

    .line 112
    :goto_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw p0
.end method
