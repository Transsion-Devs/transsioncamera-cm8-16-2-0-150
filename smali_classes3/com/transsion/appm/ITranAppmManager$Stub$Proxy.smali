.class Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/appm/ITranAppmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/appm/ITranAppmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/appm/ITranAppmManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    :try_start_8
    const-string v2, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 207
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 208
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 214
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 210
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    goto :goto_28

    .line 214
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 224
    :try_start_8
    const-string v2, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 228
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 229
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 235
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 232
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 235
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw p0
.end method

.method public registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    .registers 6

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    :try_start_8
    const-string v2, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 166
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_3c

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_38

    .line 168
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 169
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_14

    .line 175
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 172
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_14

    goto :goto_31

    .line 175
    :goto_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw p0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    :try_start_8
    const-string v2, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 149
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 150
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 156
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 153
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 156
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw p0
.end method

.method public unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    .registers 6

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    :try_start_8
    const-string v2, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 185
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_3c

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 186
    iget-object p0, p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_38

    .line 187
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 188
    invoke-static {}, Lcom/transsion/appm/ITranAppmManager$Stub;->getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_14

    .line 194
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 191
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_14

    goto :goto_31

    .line 194
    :goto_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw p0
.end method
