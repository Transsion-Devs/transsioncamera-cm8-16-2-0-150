.class Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 108
    const-string p0, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    return-object p0
.end method

.method public interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    .registers 5

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :catchall_14
    move-exception p0

    goto :goto_37

    .line 122
    :cond_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_19
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 125
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 126
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_14

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw p0
.end method

.method public scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    .registers 6

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :catchall_14
    move-exception p0

    goto :goto_38

    .line 146
    :cond_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_19
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_34

    .line 149
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 150
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_14

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p0
.end method
