.class Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 81
    const-string p0, "com.transsion.hubsdk.api.trancare.ITranTrancareCallback"

    return-object p0
.end method

.method public onTidChange()V
    .registers 4

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.trancare.ITranTrancareCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    .line 89
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 90
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;->onTidChange()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_24

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception p0

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    throw p0
.end method
