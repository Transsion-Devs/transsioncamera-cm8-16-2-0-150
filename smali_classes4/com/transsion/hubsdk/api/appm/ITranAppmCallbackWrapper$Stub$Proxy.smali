.class Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 86
    const-string p0, "com.transsion.hubsdk.api.appm.ITranAppmCallbackWrapper"

    return-object p0
.end method

.method public onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.appm.ITranAppmCallbackWrapper"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 97
    invoke-static {}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 98
    invoke-static {}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;->onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 104
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 101
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 104
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw p0
.end method
