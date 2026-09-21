.class Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 103
    const-string p0, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    return-object p0
.end method

.method public onAsyncCallback(ILjava/lang/String;)V
    .registers 6

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 113
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 114
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onAsyncCallback(ILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw p0
.end method

.method public onBundleAsyncCallback(ILandroid/os/Bundle;)V
    .registers 7

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_19

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    :catchall_17
    move-exception p0

    goto :goto_3b

    .line 133
    :cond_19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_1c
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_37

    .line 136
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 137
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onBundleAsyncCallback(ILandroid/os/Bundle;)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_17

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw p0
.end method
