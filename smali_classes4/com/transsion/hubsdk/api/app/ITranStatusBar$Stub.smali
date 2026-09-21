.class public abstract Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.app.ITranStatusBar"

.field static final TRANSACTION_autoStartFullIntent:I = 0x4

.field static final TRANSACTION_customGesturesEnable:I = 0x6

.field static final TRANSACTION_customHeadsUp:I = 0x3

.field static final TRANSACTION_customNotificationStyle:I = 0x1

.field static final TRANSACTION_customPanelEnable:I = 0x5

.field static final TRANSACTION_enableAction:I = 0x9

.field static final TRANSACTION_enableActionWithUrl:I = 0x8

.field static final TRANSACTION_onDestoryCallback:I = 0x7

.field static final TRANSACTION_updateCloseHeadsUp:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/app/ITranStatusBar;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 61
    instance-of v1, v0, Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;
    .registers 1

    .line 420
    sget-object v0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)Z
    .registers 2

    .line 410
    sget-object v0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 414
    sput-object p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 411
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    .line 73
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    if-eq p1, v0, :cond_df

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_e4

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 178
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_23

    move v0, v1

    .line 185
    :cond_23
    invoke-interface {p0, p1, p4, v0}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    move v0, v1

    .line 171
    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->onDestoryCallback(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 143
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_63

    move v0, v1

    .line 148
    :cond_63
    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customGesturesEnable(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 132
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_78

    move v0, v1

    .line 137
    :cond_78
    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customPanelEnable(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8d

    move v0, v1

    .line 125
    :cond_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_98
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a6

    move v0, v1

    .line 112
    :cond_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_bf

    move v0, v1

    .line 99
    :cond_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_ca
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d8

    move v0, v1

    .line 87
    :cond_d8
    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customNotificationStyle(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 77
    :cond_df
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_b1
        :pswitch_98
        :pswitch_7f
        :pswitch_6a
        :pswitch_55
        :pswitch_47
        :pswitch_2a
        :pswitch_11
    .end packed-switch
.end method
