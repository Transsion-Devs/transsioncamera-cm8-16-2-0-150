.class public Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/location/LocationReceiveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationHandler"
.end annotation


# instance fields
.field mHelper:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Landroid/os/Looper;Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)V
    .registers 4

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;->mHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper$LocationHandler;->mHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    if-nez p0, :cond_b

    goto :goto_2d

    .line 166
    :cond_b
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_LOCATION_UPDATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$misReceiving(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2e

    :goto_2d
    return-void

    .line 170
    :cond_2e
    :try_start_2e
    invoke-static {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$misReceiving(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$mhandleReRequestLocation(Lcom/transsion/camera/app/common/location/LocationReceiveHelper;Ljava/lang/String;II)V

    return-void

    .line 173
    :cond_40
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage: has not receiving current location"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
